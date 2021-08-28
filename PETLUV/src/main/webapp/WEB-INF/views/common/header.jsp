<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETLUV</title>
	<!-- 부트스트랩 라이브러리 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
	    * { box-sizing: border-box;}
	    a {
	        text-decoration: none;
	        cursor: pointer;
	        color: black;
	    }
	    a:hover {
	        text-decoration: none;
	        cursor: pointer;
	        color: black;
	    }
	    .header{
	        width: 100%;
	        height: 100px;
	        margin: 10px 20;
	    }
	    .header_left{
	        float: left;
	        padding: 20px 0;
	    }
	    .header_right{
	        float: right;
	        margin: 30px 15px;
	        padding: auto;
	    }
	
	</style> 
</head>
<body>
	<div class="header">

        <div class="header_left">
            <a href=""><h1><b>PETLUV</b></h1></a>
        </div>
        <div class="header_right">
            <c:choose>
                <c:when test="{empty loginUser}">
                   
                    <a href="">회원가입</a> &nbsp;
                    <a href="">로그인</a>
                </c:when>
                
                <c:otherwise>
                  
                    <label for="">관리자 님 환영합니다.</label> &nbsp;&nbsp;
                    <a href="">로그아웃</a>
                </c:otherwise>
                 
            </c:choose>
            
        </div>

    </div>
</body>
</html>