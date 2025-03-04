<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과페이지</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../assets/css/algorithm/result.css">
</head>
<body>
    <div>
      <section id="result">
        <div>
          <img
             src="https://findmyplant.netlify.app/assets/img/19.jpg" class="img1">  
        <div class="result-name">몬스테라 Monstera </div>
    <div class="result-desc">
      <ul class="content">
        <li>몬스테라는 잎이 자랄 수록 크고 멋스럽게 갈라지는 식물입니다.</li>
        <li>몬스테라는 빛이 부족하면 성장이 더디고 마디가 길어져 밉게 자랍니다.</li>
        <li>해를 직접보면 잎이 탈수 있어요! 해가 걸러들어오는 반음지에서 키워 주세요.</li>
        <li>겨울철이 되면 생장이 둔화되어 겨울잠을 잔답니다.</li>
        <li>물은 2주일에 한 번씩 흠뻑 주시는게 좋아요! 👏</li>
      </ul>
    </div>
    <div class="result-tip">
      <h6>💖 알아두면 좋은 TIP!
        <ul class="sub-content">
          <li>물을 조금씩 자주 주면 과습의 원인이 될 수 있어요</br>
          흙이 말랐을 때 밑에 물이 빠질 정도로 흠뻑 주세요! </li>           
          <li>갑자기 잎이 노래지거나 줄기만 보기 싫게 자랐나요?</br></li>
          빛이 부족해서 그럴 수 있어요! 밝은 곳으로 옮겨 주세요</li>
        </ul>
      </h6>
      <button type="btn" class="btn1"onclick="location.href= 'http://127.0.0.1:5500/html/FindMyPlant/main/index.html';">다시하기</button>
    </div>
    </div>
  </section>
</body>
</html>