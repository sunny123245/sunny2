<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>고수신청목록</title>
<link rel="stylesheet"
	href="../../assets/css/gosuApplicationBoardList.css" />
</head>
<jsp:include
	page="${pageContext.request.contextPath}/app/admin/adminHeader2.jsp" />
<body>
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
							<img src="../../assets/img/admin/img/user.png" alt="" />
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
						<h1>식고수신청관리게시판</h1>
					</div>
					<p>식고수 신청한 회원들의 신청 게시글이 있습니다.</p>
				</div>
				<div class="board_wrap">
					<div class="board_list_wrap">
						<div class="board_list">
							<div class="top">
								<div class="num">번호</div>
								<div class="title">제목</div>
								<div class="writer">글쓴이</div>
								<div class="date">작성일</div>
							</div>
							<!--  예시  -->

							<c:choose>
								<c:when test="${not empty userNumber }">
									<c:forEach var="user" items="${userNumber }">
										<div>
											<div class="num">${user.getUserNumber() }</div>
											<div class="title">
												<a href="#">${user.getUserNickname }</a>
											</div>
											<div class="writer">소금</div>
											<div class="date">2222.2.22</div>
										</div>
									</c:forEach>
								</c:when>

							</c:choose>



							<div>
								<div class="num">7</div>
								<div class="title">
									<a href="#">글 제목-1</a>
								</div>
								<div class="writer">소금</div>
								<div class="date">2222.2.22</div>
							</div>

							<div>
								<div class="num">6</div>
								<div class="title">
									<a href="#">글 제목0</a>
								</div>
								<div class="writer">소금</div>
								<div class="date">2222.2.22</div>
							</div>

							<div>
								<div class="num">5</div>
								<div class="title">
									<a href="#">글 제목1</a>
								</div>
								<div class="writer">소금</div>
								<div class="date">2222.2.22</div>
							</div>

							<div>
								<div class="num">4</div>
								<div class="title">
									<a href="#">글 제목2</a>
								</div>
								<div class="writer">후추</div>
								<div class="date">2021.1.15</div>
							</div>

							<div>
								<div class="num">3</div>
								<div class="title">
									<a href="#">글 제목3</a>
								</div>
								<div class="writer">설탕</div>
								<div class="date">9999.9.99</div>
							</div>

							<div>
								<div class="num">2</div>
								<div class="title">
									<a href="#">글 제목4</a>
								</div>
								<div class="writer">간장</div>
								<div class="date">2053.2.12</div>
							</div>

							<div>
								<div class="num">1</div>
								<div class="title">
									<a href="#">글 제목5</a>
								</div>
								<div class="writer">치킨</div>
								<div class="date">1993.2.12</div>
							</div>
							<!--  -->
						</div>
						<div class="board-page">
							<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
							<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
								href="#" class="num">3</a> <a href="#" class="num">4</a> <a
								href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
								href="#" class="bt last">>></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer id="footers"></footer>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#headers").load("../../assets/html/adminHeader.html");
			$("#footers").load("../../assets/html/footer.html");
		});
	</script>
</body>
</html>
