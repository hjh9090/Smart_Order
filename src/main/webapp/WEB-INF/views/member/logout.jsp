<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "google-signin-client_id"content = "414429822888-7neu48e5nudefscmm42ega9hts2duc9o.apps.googleusercontent.com">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
var url = "https://accounts.google.com/logout";
var mapsMain = "http://localhost:80/order";
function onLoad() {
	gapi.load('auth2', function() { 
		gapi.auth2.init();
		
	});
}
function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
        console.log('로그아웃 완료');
    });
	auth2.disconnect();
 	goHome();
}
function goHome() {
	alert('로그아웃이 되었습니다.')
	location.href = "/map.go";
}



</script>
<title>로그아웃</title>

</head>
<body>

</body>
</html>