<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- 부트스트랩 라이브러리 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        * {box-sizing: border-box;}
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
        .content{
            border:1px solid lightgray;
            width:90%;
            margin:auto;
            padding:5% 10%;
            background:white;
        }

        .pagingArea{
            width: fit-content;
            margin: auto;
        }
        .searchForm{
            float: left;

        }

    </style>
</head>
<body>

	<!-- 헤더  -->
	<%-- <jsp:include page="../common/header.jsp"> --%>
	
    <!-- 컨텐트 -->
    <div class="content">
        <br><br>
        <div class="innerOuter" >
            <h2>커뮤니티</h2>
            <br>
            
            <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
            <c:if test="${ !empty loginUser }">
	            <a class="btn btn-secondary" style="float:right" href="enrollForm.bo">글쓰기</a>
	            <br><br><br>
            </c:if>
            
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th width=10>글번호</th>
                    <th width=250>제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
                	<c:forEach var="b" items="${ list }">
	                    <tr>
	                        <td class="bno">${ b.boardNo }</td>
	                        <td>
                                <c:if test="${ !empty b.originName }">
	                        		★
	                        	</c:if>
                                ${ b.boardTitle }
                            </td>
	                        <td>${ b.boardWriter }</td>
	                        <td>${ b.count }</td>
	                        <td>${ b.createDate }</td>

	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <script>
            	$(function(){
            		$("#boardList tbody tr").click(function(){
            			location.href="detail.bo?bno=" + $(this).children(".bno").text();
            		})
            	})
            </script>
            <br>

            <div class="pagingArea">
            
                <ul class="pagination">
                	
                	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
	                    	<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ pi.currentPage-1 }">Previous</a></li>
                    	</c:otherwise>
                    </c:choose>
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ p }">${ p }</a></li>
                    </c:forEach>
                    
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
	                    	<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ pi.currentPage+1 }">Next</a></li>
                    	</c:otherwise>
                    </c:choose>
                </ul>
                
            </div>
           
            <br clear="both"><br>
            

            <form class="searchForm" action="" method="Get" align="center">
                <div class="select">
                    <select class="custom-select" name="condition">
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </div>
                <div class="text">
                    <input type="text" class="form-control" name="keyword">
                </div>
                <button type="submit" class="searchBtn btn btn-secondary">검색</button>
            </form>
            <br><br>
        </div>
        <br><br>
    </div>
	
</body>
</html>