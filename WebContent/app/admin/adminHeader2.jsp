<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="../../assets/css/adminHeader2.css" />

<header>
  <section class="header">
    <div class="header-top">
      <div class="header-top-size">
        <div class="top-btn-group">
          <a href="logoutOk.ad" class="logout-btn">로그아웃</a>
        </div>
      </div>
    </div>
    <div class="header-bottom">
      <div class="header-bottom-size">
        <!-- 로고 누르면 홈으로 경로처리 -->
        <div class="logo-box">
          <a href="">
            <span class="logo">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                <path
                  d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z"
                />
              </svg>
            </span>
            <h1><span>볕 들 무렵</span></h1>
          </a>
        </div>
      </div>
    </div>
  </section>
  <div class="user-count">
    <div>
      <div class="count-box-all">
        <div class="user-count-box">
          <span class="user-count-text">1010</span>
          <h4 class="user-count-text2">전체 회원</h4>
        </div>
        <div class="user-count-box">
          <span class="user-count-text">14</span>
          <h4 class="user-count-text2">식고수회원</h4>
        </div>
        <div class="user-count-box">
          <span class="user-count-text">120</span>
          <h4 class="user-count-text2">스토리</h4>
        </div>
        <div class="user-count-box">
          <span class="user-count-text">53</span>
          <h4 class="user-count-text2">질문수</h4>
        </div>
        <div class="user-count-box">
          <span class="user-count-text">50</span>
          <h4 class="user-count-text2">답변수</h4>
        </div>
      </div>
    </div>
  </div>
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      const spans = document.querySelectorAll(".user-count-text");
      console.log(spans);
      spans.forEach((span) => {
        const currentValue = Number(0);
        const targetValue = Number(span.textContent);
        let value = currentValue;
        const interval = setInterval(() => {
          if (value < targetValue) {
            value++;
            span.textContent = value;
          } else {
            clearInterval(interval);
          }
        }, 1);
      });
    });
  </script>
</header>
