<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
start_4.jsp 입니다.<br>


<%
	String viewPage = request.getContextPath() + "/user.uspage";
	String loginInfo = (String)session.getAttribute("loginInfo");
	response.sendRedirect(viewPage);
%>
  