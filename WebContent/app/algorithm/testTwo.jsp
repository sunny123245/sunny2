<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2번</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../assets/css/algorithm/testTwo.css" />
</head>
<body>
    <section id="qna" class="mx-auto my-5 py-5 px-3">
      <progress value="80" max="200" id="my_skill"></progress>
      <a href="http://127.0.0.1:5500/html/FindMyPlant/main/index.html">
      	<img src="../../assets/img/algorithm/index/home.png" 
        class = "img"></a>
      <div class="questionContainer">
        <a href="http://127.0.0.1:5500/html/FindMyPlant/test1/test1.html">
        <input
          class ="back"
          type="image"
          src="../../assets/img/algorithm/testTwo/back.png"
          value="뒤로가기"
        />
        </a>
        <h1>2. 집안에 창문이 있는 곳에 <br> 식물을 놓을 계획이 있나요? </h1>
      </div>
      <div class="answerContainer">
        <a href="http://127.0.0.1:5500/html/FindMyPlant/test3/test3.html">
        <ul>
          <li style="list-style-type: none">
            <button class="btn true">YES</button>
          </li>
          <li style="list-style-type: none">
            <button class="btn no">NO</button>
            </li>
         </ul>
       </a>
      </div>
    </section>
    <script src ="../../assets/js/algorithm/test1.js"></script>
</body>
</html>