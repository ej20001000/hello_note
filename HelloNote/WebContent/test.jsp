<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title></title>
<style>
html, body {
  height: 100%;
}

body {
  font-family: helvetica;
  font-weight: 100;
  font-size: 14px;
  margin: 0 auto;
  background: #FFFFBB;
}

.right {
  float: right;
  position: relative;
  top: 6px;
}

.top {
  margin-top: -30px;
}

#notebooks {
  background: whitesmoke;
  position: absolute;
  left: 50%;
  margin-left: -175px;
  margin-top: 35px;
  width: 350px;
  padding: 15px;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  box-shadow: inset 1px 1px 0 white;
  max-height: 450px;
}

ul {
  margin: 0 auto;
  padding: 0;
  max-height: 390px;
  overflow-y: auto;
  border: 1px solid rgba(0, 0, 0, 0.1);
  padding: 5px 5px 0 5px;
  border-left: none;
  border-right: none;
}

li {
  list-style: none;
  background-color: rgba(0, 0, 0, 0.05);
  background-image: 
    linear-gradient(
      90deg,
      #FFD32E 10px,
      #EEE 10px,
      #EEE 11px,
      transparent 11px);
  padding: 10px 15px 10px 25px;
  border: 1px solid #CCC;
  box-shadow: inset 1px 1px 0 rgba(255, 255, 255, 0.5);
  margin-bottom: 5px;
  width: 100%;
  box-sizing: border-box;
  cursor: pointer;
  border-radius: 3px;
}

#query {
  width: 100%;
  box-sizing: border-box;
  font-size: 19px;
  padding: 5px;
  font-family: calibri light;
  margin-bottom: 10px;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  box-shadow: inset 1px 1px 0 rgba(0, 0, 0, 0.1);
}

#notebooks span {
  display: block;
  position: absolute;
  background: #FFD32E;
  bottom: -35px;
  left: -1px;
  width: 360px;
  border-radius: 0 0 5px 5px;
  border: 1px solid rgba(0, 0, 0, 0.1);
  padding: 10px;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
  box-shadow: inset 1px 1px rgba(255, 255, 255, 0.5);
}

#notebooks select {
  width: 120px;
  margin-left: 230px;
  margin-top: -45px;
  border-radius: 0 3px 3px 0;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-left: 1px solid rgba(0, 0, 0, 0.1);
  position: absolute;
  padding: 7.5px;
  box-shadow: inset 0 1px 0 rgba(0, 0, 0, 0.1);
}

#notebooks select:focus, #query:focus {
  border: 1px solid #FFD32E;
  box-shadow: 0 0 10px rgba(255, 255, 0, 0.1);
  outline: none;
}</style>
</head>
<body>
<div id="notebooks" ng-app="notebooks" ng-controller="NotebookListCtrl">
  <input type="text" id="query" ng-model="query"/>
  <select ng-model="orderList">
    <option value="">중요한</option>
    <option value="">안중요</option>
    <option value="">그럭저럭</option>
  </select>
  <ul id="notebook_ul">
    <li ng-repeat="notebook in notebooks | filter:query | orderBy: orderList">
            사이트: www.naver.com<br/>
      ID: bs930702<br/>
      PW: 1234<br/>
            메모: ㅇㅇㅇ<br/>
      <div class="right top"><button>상세정보</button></div>
    </li>
  </ul>
  <span align = "right">Hello Note !</span>
</div>
</body>
</html>