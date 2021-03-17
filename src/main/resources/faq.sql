create table faq(
faq_f varchar2(100 char) not null,
faq_q varchar2(1000 char) not null
);

insert into faq(faq_f, faq_q) 
values ( 'Q : 사이트 이용 방법에 대해 알려주세요.
', 'A : 구글 혹은 네이버 계정으로 로그인 접속을 합니다. 해당 로그인 계정에 접속을 하고 나면, 첫 화면 지도 화면에서 지역명을 검색 후 
메뉴 페이지로 이동합니다. 원하시는 메뉴에 알맞게 장바구니 및 결제를 통해 구매가 가능합니다.
');

select * from faq;

delete from faq where faq_f = '테스트';

drop table faq;