package com.soldesk.order.pay;

import java.net.URI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;



@Controller
@Service
public class KakaoPayController {

	@Autowired
	private RestTemplate resttemplate;
	
	@Autowired
	private KakaoReadyVO kakaoready;
	private KakaoApprovalVO kakoapproval;
	
	
	private static final Logger logger = LoggerFactory.getLogger(KakaoPayController.class);
	
	@RequestMapping(value = "kakaopay", method = RequestMethod.GET)
	public String kakao() {
		//주문하기 버튼 구현시 삭제
		logger.info("결제 페이지로 이동");
		return "pay/kakaopay";
	}
	
	
	@RequestMapping(value = "gopay", method = RequestMethod.POST)
	public String kakaoPay() {
		logger.info("카카오 페이에 들어옴");
		HttpHeaders headers = new HttpHeaders();
		try {
			String url = "https://kapi.kakao.com";
			
			//Headers
			headers.add("Authorization", "KakaoAK" + " cd61dd3490dff67133ce43a2708fa379");
			headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
			headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
			
			//Bodys
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			params.add("cid", "TC0ONETIME");
			//결제 업체 코드
			params.add("partner_order_id", "1001");
			//결제 업체명
			params.add("partner_user_id", "soldesk");
			//물품명(parameter)
			params.add("item_name", "아이스아메리카노");
			//수량(parameter)
			params.add("quantity", "1");
			
			params.add("total_amount", "4100");
			
			params.add("tax_free_amount", "3990");
			
			//승인된 결제 URL
			params.add("approval_url", "http://localhost/order/approval");
			//결제 취소 URL
			params.add("cancel_url", "http://localhost/order/cancel");
			//결제 실패 URL
			params.add("fail_url", "http://localhost/order/fail");
			
			//body URL 생성
	HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		//resttemplate으로 request, response 신호를 주고 받는 URI 작성
		kakaoready = resttemplate.postForObject(new URI(url + "/v1/payment/ready"), body, KakaoReadyVO.class);
			System.out.println(kakaoready.getNext_redirect_pc_url().toString());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:" + kakaoready.getNext_redirect_pc_url();
	
	}
	
	
	@RequestMapping(value = "approval", method = RequestMethod.GET)
	public KakaoApprovalVO success(@RequestParam("pg_token")String pg_token, Model model) {
		
		logger.info("결제 승인");
		
		HttpHeaders headers = new HttpHeaders();
		try {
			String url = "https://kapi.kakao.com";
			
			//Headers
			headers.add("Authorization", "KakaoAK" + " cd61dd3490dff67133ce43a2708fa379");
			headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
			headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
			
			//body
			MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
			
			params.add("cid", "TC0ONETIME");
			params.add("tid", kakaoready.getTid());
			params.add("partner_order_id", "1001");
			params.add("partner_user_id", "soldesk"); // parameter
			params.add("item_name", "아이스아메리카노"); // parameter
			params.add("pg_token", pg_token);
			params.add("total_amount", "4100"); // parameter
			
			HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String,String>>(params, headers);
			
			kakoapproval = resttemplate.postForObject(new URI(url + "/v1/payment/approve"), body, KakaoApprovalVO.class );
			
			System.out.println(kakoapproval.toString());
			
			System.out.println(kakoapproval.getItem_name().toString());
			System.out.println(kakoapproval.getAmount().getTotal().toString());
			System.out.println(kakoapproval.getPayment_method_type().toString());
			System.out.println(kakoapproval.getQuantity().toString());
			System.out.println(kakoapproval.getPartner_user_id().toString());
			
			model.addAttribute("name", kakoapproval.getItem_name().toString());
			model.addAttribute("price", kakoapproval.getAmount().getTotal().toString());
			model.addAttribute("payment", kakoapproval.getPayment_method_type().toString());
			model.addAttribute("quantity", kakoapproval.getQuantity().toString());
			model.addAttribute("user", kakoapproval.getPartner_user_id().toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return kakoapproval;
	}
	
	
}
