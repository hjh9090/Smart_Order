create table faq(
faq_f varchar2(100 char) not null,
faq_q varchar2(1000 char) not null
);

insert into faq(faq_f, faq_q) 
values ( '1. <밥먹으러 GO>는 어떤 서비스인가요? ', '저희 <밥먹으러 GO>는 스마트 웹 오더 서비스입니다. 원하시는 지역의 매장을 검색하여 해당 프렌차이즈 지점의 메뉴로 이동, 해당하는 지점의 5개씩의 메뉴를 가져와 가상계좌의 카카오페이로 결제하는 시스템입니다.')

insert into faq(faq_f, faq_q) 
values ( '2. 지도에 마커를 눌렀는데 뜨지 않습니다. ', '카카오 서버에 통신이 넘어가지 않아서 생기는 문제입니다. 마커 클릭 후 잠시 기다리면 해당 메뉴 페이지로 이동이 됩니다.')

insert into faq(faq_f, faq_q) 
values ( '3. 검색을 했는데, 반응이 없고 마커가 뜨지 않습니다. ', '검색한 지역에 해당하는 프렌차이즈 지점이 없는 경우입니다. 다른 지역명으로 검색해주세요.')

insert into faq(faq_f, faq_q) 
values ( '4. 프렌차이즈 매장들 중 12개 이외의 매장은 없나요? 어떠한 기준으로 매장을 고른 건가요? ', '업체와 제휴를 맺고 매장을 등록 하는 시스템입니다. 12개 매장을 우선적으로 제휴를 두었고 추후 다른 업체와 제휴를 통해 늘려나갈 예정입니다.')

insert into faq(faq_f, faq_q) 
values ( '5. 사이트 이용 방법에 대해 알려주세요. ', '구글 혹은 네이버 계정으로 로그인 접속을 합니다. 해당 로그인 계정에 접속을 하고 나면, 첫 화면 지도 화면에서 지역명을 검색 후 메뉴 페이지로 이동합니다. 원하시는 메뉴에 알맞게 장바구니 및 결제를 통해 구매가 가능합니다.')

select * from faq;

delete from faq;

drop table faq;