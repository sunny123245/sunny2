<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>식고수찾기</title>
    <link rel="stylesheet" href="${pageContent.request.contextPath}/assets/css/search.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/header/header.jsp"/>  
	<div class="ex-search">
    <h3>식고수 찾기</h3>
    <div class="headsearch">
      <form action="" class="expertsearch">
        <input type="text" placeholder="분야를 입력해 식고수 찾기" class="searchtext" name="condition"/>&nbsp;
        <button class="s-btn">
          검색
        </button>
      </form>
    </div>
  </div>
  
       <c:forEach var="search" items="${gosus}">
    <div class="search">
        <div class="mypage">
            <div class="profile">
              <a href="#">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.3.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z"/></svg>
              </a>
				<!-- 고수 닉네임 -->
                <div class="expertname">
                	<c:out value="${search.getUserNickname()}"/>
                </div>
                <div class="follow-btn">
                  <button type="submit" class="f-btn" id="ff-btn" onclick="colorChange()"> 팔로우</button>
                </div>
            </div>

            <div class="container">
                <div class="info">
                    <div class="inffo"> 소개 </div>
                    <!-- 식고수 회원가입 시 자동입력 -->
                    <p class="txt" id="introduction">
                   			 <c:out value="${search.getUserComment()}"/>
                    </p>
                    <div class="major">
                      <div class="inffo">분야 </div>
                      <p class="majorname">
                       <c:out value="${search.getFieldName()}"/>
                      </p>
                    </div>
                </div>
                <!-- 식고수 마이페이지로 이동 -->
                <div class="write-btn-wrap">
                  <!-- 글쓰기 페이지 이동 처리 -->
                  <a href="${pageContext.request.contextPath}/question/questionList.qs" class="plus-btn" onclick="questionList()">질문 목록</a>
                     <!-- 질문하기 페이지로 이동 -->
                      <a href="${pageContext.request.contextPath}/question/questionWrite.qs" class="question-btn" onclick="goQuestion()">질문하기</a>
                   </div>
                    </div>

            </div>
        </div>
     </c:forEach>   
     
     <div class="pagination">
         <ul>
            <!-- ========== 페이징 처리 예시 ============ -->
            <c:if test="${prev}">
               <li><a href="${pageContext.request.contextPath}/gosu/searchOk.gu?page=${startPage - 1}" class="prev">&lt;</a></li>
            </c:if>
            
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:choose>
                  <c:when test="${!(i == page) }">
                     <li>
                        <a href="${pageContext.request.contextPath}/gosu/searchOk.gu?page=${i}">
                           <c:out value="${i}"/>
                        </a>
                     </li>
                  </c:when>
                  <c:otherwise>
                     <li>
                        <a href="#" class="active">
                           <c:out value="${i}"/>
                        </a>
                     </li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
            
            <c:if test="${next}">
               <li><a href="${pageContext.request.contextPath}/gosu/searchOk.gu?page=${endPage + 1}" class="next">&gt;</a></li>
            </c:if>
            
            
            <!-- ========== /페이징 처리 예시 ============ -->
            </ul>
            </div>
    <jsp:include page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
    <script src="${pageContent.request.contextPath}/assets/js/search.js"></script>
</body>
</html>