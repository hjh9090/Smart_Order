<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/review.js"></script>
<title>리뷰게시판</title>
<style type="text/css">
.tdnum {
   width: 50px;
}

.tddate {
   width: 120px;
}

td {
   font-family: 'BMJUA';
}


.tdwrite{
width: 250px;
}

.tdwrite{
padding-left: 50px; 

.tdwrite {
   width: 400px;
}

.bd-placeholder-img {
   font-size: 1.125rem;
   text-anchor: middle;
   -webkit-user-select: none;
   -moz-user-select: none;
   user-select: none;
}

@media ( min-width : 768px) {
   .bd-placeholder-img-lg {
      font-size: 3.5rem;
   }
}
</style>
<!-- BootStrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="google-signin-client_id"
   content="414429822888-7neu48e5nudefscmm42ega9hts2duc9o.apps.googleusercontent.com">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<script type="text/javascript"
   src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
   charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.0/examples/album/">

<!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
   integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
   crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
   href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
   sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
   sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
   sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
   href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
   color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
   integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
   integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
   crossorigin="anonymous"></script>

<!--  <script type="text/javascript" src="resources/map.js"></script>-->

<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef243eba4a37959f8d19524f4e2209e9&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/view.css">


</head>
<body>

   <header>
      <div class="collapse bg-dark" id="navbarHeader">
         <div class="container">
            <div class="row">
               <div class="col-sm-8 col-md-7 py-4">
                  <h4 class="text-white">Notice!</h4>
                  <p class="text-muted">리뷰 게시판 작성시 말 머리에 [지점명]을 달고 작성 해 주시기
                     바랍니다!</p>
               </div>
               <div class="col-sm-4 offset-md-1 py-4">
                  <h4 class="text-white">메뉴</h4>
                  <ul class="list-unstyled">
                     <li><a href="map.go" class="text-white">주문하러 가기</a></li>
                     <li><a href="review" class="text-white">리뷰 게시판</a></li>
                     <c:if test="${sessionScope.Naver_id == null && sessionScope.Google_id == null}">
                        <li><a href="login" class="text-white">로그인</a></li>
                     </c:if>
                     <c:if test="${sessionScope.Naver_id != null}">
                        <li><a href="logout" class="text-white">로그아웃</a></li>
                     </c:if>
                     <c:if test="${sessionScope.Google_id != null}">
                        <li><a href="logout" class="text-white">로그아웃</a></li>
                     </c:if>
                     <li><a href="faq" class="text-white">자주묻는질문</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="navbar navbar-dark bg-dark shadow-sm">
         <div class="container">
            <a href="map.go" class="navbar-brand d-flex align-items-center">
               <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                  fill="none" stroke="currentColor" stroke-linecap="round"
                  stroke-linejoin="round" stroke-width="2" aria-hidden="true"
                  class="me-2" viewBox="0 0 24 24">
        <path
                     d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
                  <circle cx="12" cy="13" r="4" /></svg> <strong>밥 먹으러 GO!</strong>
            </a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarHeader"
               aria-controls="navbarHeader" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
         </div>
      </div>
   </header>



   <table style="margin-left: auto; margin-right: auto;">
      <tr>
         <td>
            <div id="rreg" align="center">
               <form action="search.review">
                  <br>
                  <div class="search-box">

                     <input type="text" name="r_content"
                        placeholder=" 찾으시는 리뷰내용을 적어주세요" class="txtsearch">
                     <button class="bttn-gradient bttn-sm bttn-warning" id="sbtn">검색</button>

                  </div>
               </form>
               <p>
                  <c:if
                     test="${sessionScope.Naver_id != null || sessionScope.Google_id != null}">
                     <form action="reg.review" method="post"
                        enctype="multipart/form-data">
                        <table border="1" class="regtable">
                           <tr>

                              <td style="font-family: 'BMJUA';">리뷰내용</td>
                              <td style="font-family: 'BMJUA';"><textarea
                                    maxlength="100" placeholder="100자 이내로 리뷰 내용을 적어주세요!"
                                    name="r_content" cols="37" rows="2"
                                    style="resize: both; background-color: #FDEBC8; border: none;"></textarea>
                           </tr>
                           <tr>
                              <td style="font-family: 'BMJUA';">리뷰사진&nbsp;&nbsp;</td>
                              <td><input type="file" name="r_picture"></td>
                           </tr>
                           <tr>
                              <td colspan="2" align="center" style="font-family: 'BMJUA';"><button
                                    class="bttn-jelly bttn-md bttn-warning">등록</button></td>
                           </tr>
                        </table>
                        <hr>
                        <p>
                     </form>
                  </c:if>
            </div>

            <div>
               <c:forEach var="r" items="${reviews}">

                  <table id="rtable" border="1" width="400px"; height="400px"; align="center"; >
                     <tr>
                        <td class="tdnum">No.${r.r_num}&nbsp;&nbsp;&nbsp; <fmt:formatDate value="${r.r_date}" dateStyle="long" /></td></tr>
                        <tr><td class="tdid" align="right">ID: ${r.r_id}&nbsp;&nbsp;</td></tr>
                     <tr>
                     <td class="tdimg" align="center"><img src="resources/reviewimg/${r.r_picture}" width="300px" height="300px"></td>
                     </tr>
                     <tr>
                     <td class="tdwrite" align="center"><br>${r.r_content}<br></td>
                     </tr>
                     <c:if test="${sessionScope.Naver_name == r.r_id}">
                     <tr>
                        <td class="tddel">
                        <button  onclick="deleteReview('${r.r_num}')">삭제</button>
                        <button onclick="updateReview('${r.r_content}','${r.r_num}')">수정</button></td>
                     </tr>
               </c:if>
                  </table>
                  <p>
               </c:forEach>
            </div>

<br>
<br>
<hr>
<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
<!--       <a href="#">Back to top</a> -->
    </p>
    <p class="mb-1">밥 먹으러 Go!  &copy; (주)솔데스크 종로 본원에 있는 SBT교육과정의 4팀에서 만든 프로젝트 입니다.</p>
    <p class="mb-0">솔데스크 홈페이지 : <a href="https://soldesk.com/index.asp">link of Soldesk</a> SoftBankTechnology : <a href="https://www.softbanktech.co.jp/">link of SBT</a></p>
  </div>
</footer>


   <br>
   <br>
   <hr>
   <footer class="text-muted py-5">
      <div class="container">
         <p class="float-end mb-1">
            <!--       <a href="#">Back to top</a> -->
         </p>
         <p class="mb-1">밥 먹으러 Go! &copy; (주)솔데스크 종로 본원에 있는 SBT교육과정의 4팀에서
            만든 프로젝트 입니다.</p>
         <p class="mb-0">
            솔데스크 홈페이지 : <a href="https://soldesk.com/index.asp">link of
               Soldesk</a> SoftBankTechnology : <a
               href="https://www.softbanktech.co.jp/">link of SBT</a>
         </p>
      </div>
   </footer>


</body>
</html>