<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>통계</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 $(".expt_rt").each(function(index){
		 if($(this).children().first().html().substr(2,2) == "총계"){
			 $(this).css("background", "yellowgreen");
		 } else if($(this).children().first().html() == "총계"){
			 $(this).css("background","yellow");
		 }
	 });
	 
	 $("#allChk").click(function(){
		 if($("#allChk").prop("checked")){
			 $("input[name=area_cd]").prop("checked", true);
		 } else { 
			 $("input[name=area_cd]").prop("checked", false);
		 }
	 });
	 
	 $("#submitFrm").click(function(){
		  var area_cd = "";
		 $("input[name=area_cd]:checked").each(function() {
			 area_cd += $(this).val()+','; 
		    });
 		 area_cd = area_cd.substr(0,area_cd.length-1);
		 alert(area_cd);
	 });
});
</script>
</head>
<body>
  <form action="list.do">
    <input type="checkbox" id="allChk">전체<br>
   <c:forEach var="cd" items="${cd }">
      <input type="checkbox" name="area_cd" value=${cd.AREA_CD }>${cd.CD_NM }
   </c:forEach>
<!--       <input type="checkbox" name="area_cd" value="20">서울 -->
<!--       <input type="checkbox" name="area_cd" value="10">부산 -->
<!--       <input type="checkbox" name="area_cd" value="30">광주 -->
<!--       <input type="checkbox" name="area_cd" value="40">대전 -->
<!--       <input type="checkbox" name="area_cd" value="60">인천 -->
<!--       <input type="checkbox" name="area_cd" value="70">아산<br> -->

  <hr>
  <table>
    <tr>
      <th>EXPT_RT</th>
      <th>안마기(%)</th>
      <th>냉장고(%)</th>
      <th>TV(%)</th>
      <th>오디오(%)</th>
      <th>전화기(%)</th>
      <th>에어컨(%)</th>
      <th>전자렌지(%)</th>
      <th>카메라(%)</th>
      <th>김치냉장고(%)</th>
      <th>세탁기(%)</th>
      <th>판매량</th>
    </tr>
    <c:forEach var="sales" items="${list }">
       <tr class="expt_rt">
          <td>${sales.EXPT_RT}</td>
          <td>${sales.COL1}</td>
          <td>${sales.COL2 }</td>
          <td>${sales.COL3 }</td>
          <td>${sales.COL4 }</td>
          <td>${sales.COL5 }</td>
          <td>${sales.COL6 }</td>
          <td>${sales.COL7 }</td>
          <td>${sales.COL8 }</td>
          <td>${sales.COL9 }</td>
          <td>${sales.COL10 }</td>
          <td>${sales.TOT }</td>
       </tr>
    </c:forEach>
  </table>
</body>
</html>