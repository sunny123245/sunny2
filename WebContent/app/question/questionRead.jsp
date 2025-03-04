<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>질문</title>
   <link rel="stylesheet" href="${pageContent.request.contextPath}/assets/css/questionRead.css">
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/app/header/header.jsp"/>
    <div class="container">
        <article class="view-top">
          <div class="infomation">
            <div class="txt-area">
              <a href="">
                <div class="profile-img"></div>
                <p class="profile">홍길동</p>
              </a>
              <button type="button" class="follow dir" onclick="toggleFollow()">팔로우</button>
              <p class="txt"></p>
            </div>
          </div>
      
            </button>

            <div class="title-wrap">
              <span class="hit">조회수</span>
              <!-- 임시 조회수 -->
              <div class="content-hit">
                 <c:out value="#" />
              </div>
           </div>

          </div>
        </article>
      
      
                  <!-- 임시 내용 -->
      
                  <!-- 임시 첨부 파일 -->
                  <div class="view-attach">
                      <c:forEach var="file" items="">
                          <div class="img-box">
                              <img src="">
                          </div>
                      </c:forEach>
                  </div>
                  
            
                  <div class="btn-group">
                    <!-- 각 버튼 처리 경로 js로 수정하기 -->
                    <button type="button" class="list-btn" onclick="questionList()">목록</button>
                    
                    <c:if test="#">
                       <button type="button" class="modify-btn">수정</button>
                       <button type="button" class="delete-btn">삭제</button>
                    </c:if>
                 </div>
      
            <div class="story-date">
              <p class="todate">2023-03-21</p>
            </div>
      
                 
			<!-- 댓글 수정중 -->
      
          <div class="comment-form">
            <div class="holder">
              <h3 class="subtit">댓글
                <span class="fc1" id="comment-count">12</span>
              </h3>
            </div>
            <form id="comment-form">
              <input type="hidden" name="boardNumber"
                value="${board.getBoardNumber()}">
              <div class="form-group">
                <textarea name="content" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
              </div>
              <button type="button" class="submit-btn">댓글 작성</button>
            </form>
          </div>
      
                  <div class="comment-list">
                      <!-- 리스트 예시 -->
                      <ul id="comment-list">
                          <li>
                              <div class="comment-info">
                                  <span class="writer">홍길동</span> <span class="date">2222-22-22</span>
                              </div>
                              <div class="comment-content-wrap">
                                  <div class="comment-content">
                                      <p>안녕하세요</p>
                                  </div>
                                  <div class="comment-btn-group">
                                      <button type=button class="comment-modify-ready">수정</button>
                                      <button type=button class="comment-delete">삭제</button>
                                  </div>
                                  <div class="comment-btn-group none">
                                      <button type=button class="comment-modify">수정 완료</button>
                                  </div>
                              </div>
                          </li>
                      </ul>
                      <!-- /리스트 예시 -->
                  </div>
      
                  <!-- 댓글 수정중 -->
      
              </div>
              
    <script src="${pageContent.request.contextPath}/assets/js/questionRead.js"></script>
    <jsp:include
   page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
</body>
</html>