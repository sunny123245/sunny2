<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>전체회원관리</title>
<link rel="stylesheet" href="../../assets/css/userManage.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
</head>
<jsp:include
	page="${pageContext.request.contextPath}/app/admin/adminHeader2.jsp" />
<body>
	<header id="headers"></header>
	<div class="sidebar-read-all">
		<div class="sidevar">
			<div class="admin-info-all">
				<div class="admin-info">
					<div class="info-top">
						<h3>관리자</h3>
					</div>
				</div>
				<div class="admin-info2">
					<div class="admin-img-name-date">
						<div class="admin-imgbox">
							<div class="admin-img">
								<a href=""><img src="../../assets/img/admin/sogum.jpg"
									alt="" /></a>
							</div>
						</div>
						<div class="admin-name-date">
							<div class="admin-name">소금</div>
							<div class="admin-date">가입일 2023.03.21</div>
						</div>
					</div>
				</div>
			</div>
			<div class="manage-all">
				<div class="manage-manu">
					<div class="user-manage">
						<div class="user-manage-headline">
							<img src="../../assets/img/admin/user.png" alt="" />
							<h2>관리하기</h2>
						</div>
						<div class="hr">
							<hr />
						</div>
						<div class="user-manage-list">
							<div class="all-user-manage">
								<a href="userManage.ad">전체회원관리</a>
							</div>
							<div class="gosu-user-manage">
								<a href="gosuManage.ad">식고수회원관리</a>
							</div>
							<div class="gosu-application-user-manage">
								<a href="">식고수신청관리</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="board-read-all">
			<div class="read-container">
				<div class="view-wrap">
					<div class="view-title">
						<h1>전체회원관리</h1>
					</div>
					<p>전체 회원관리를 할 수 있습니다. 회원 닉네임을 클릭시 회원상세페이지로 넘어갑니다.</p>
				</div>
				<table class="user-manage-table">
					<thead>
						<tr>
							<th class="user-num">회원번호</th>
							<th class="user-grade">등급명</th>
							<th>닉네임</th>
							<th class="join-date">가입일</th>
						</tr>
					</thead>
					<tbody> 
						<c:choose>
							<c:when test="${not empty userList }">
								<c:forEach var="users" items="${userList }">
									<tr>
										<td class="user-num">${users.getUserNumber() }</td>
										<td class="user-grade">${users.getGradeName() }</td>
										<td><a href="userDetail.ad">${users.getUserNickname() }</a></td>
										<td class="join-date">${users.getUserDate() }</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4" align="center">회원이 한명도 없습니다. ㅜ</td>
								</tr>
							</c:otherwise>
						</c:choose>

						<!-- 예시 -->
					<!-- <tr>
						<td class="user-num">1</td>
						<td class="user-grade">식집사</td>
						<td><a href="">소금</a></td>
						<td class="join-date">2011.11.11</td>
					</tr> -->
					
					</tbody>
				</table>
				<%-- <div class="pagination">
					<ul>
						<!-- ========== 페이징 처리 예시 ============ -->
						<c:if test="${prev}">
							<li><a
								href="${pageContext.request.contextPath}/admin/userManageOk.bo?page=${startPage - 1}"
								class="prev">&lt;</a></li>
						</c:if>

						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:choose>
								<c:when test="${!(i == page) }">
									<li><a
										href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${i}">
											<c:out value="${i}" />
									</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#" class="active"> <c:out value="${i}" />
									</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${next}">
							<li><a
								href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${endPage + 1}"
								class="next">&gt;</a></li>
						</c:if>


						<!-- ========== /페이징 처리 예시 ============ -->
					</ul>
				</div> --%>
				<div class="search">
					<input type="text" class="input" placeholder="Search..." />
					<button class="btn">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<footer id="footers"></footer>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#footers").load("../../assets/html/footer.html");
		});
	</script>
	<script src="../../assets/js/userManage.js"></script>
</body>
</html>
