<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name = "google-signin-client_id" content = "414429822888-7neu48e5nudefscmm42ega9hts2duc9o.apps.googleusercontent.com">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<script type="text/javascript">
// 	function onSignIn(googleUser) {
// 			var id_token = googleUser.getAuthResponse().id_token;
// 			  var profile = googleUser.getBasicProfile();
// 			  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
// 			  console.log('Name: ' + profile.getName());
// 			  console.log('Image URL: ' + profile.getImageUrl());
// 			  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
				
// 				setTimeout(sendTime("callbackGoo"), 5000);
			
// 			function sendTime(action, params) {
				
// 				var xhr = new XMLHttpRequest();
// 				xhr.open('POST', 'http://localhost/order/callbackGoo');
// 				xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
// 				xhr.onload = function() {
// 					console.log('Signed in as: ' + xhr.responseText);
// 				};
// 				xhr.send('idtoken=' + id_token);
				
// 				var form = document.createElement('form');
				
// 				form.setAttribute('method', 'POST');
// 				form.setAttribute('action', action);
				
// 				document.charset = "UTF-8";
				
// 				document.body.appendChild(form);
				
// 				form.submit();
// 			}
// 		}

function onSignIn(googleUser) {
var profile = googleUser.getBasicProfile();
	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  console.log('Name: ' + profile.getName());
	  console.log('Image URL: ' + profile.getImageUrl());
	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	  var id_token = googleUser.getAuthResponse().id_token;
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'http://localhost/order/callbackGoo');
		xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		xhr.onload = function() {
		};
		xhr.send('idtoken=' + id_token);
		
 		setTimeout(function(){ BackHome(); }, 5000);
	}
	
function BackHome() {
	location.href = "/order";
}


</script>
<title>로그인 페이지</title>
</head>
<body>
<%
    String clientId = "ClWf64Ti2yUUN4Cebp9N";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:80/order/callback", "UTF-8");
    //콜백 주소 설정
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>


<a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>


<div class="g-signin2" data-onsuccess="onSignIn"></div>







</body>
</html>
