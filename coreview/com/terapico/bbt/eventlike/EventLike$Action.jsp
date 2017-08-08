
<%@ page language="java" contentType="text/plain; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="zh_CN"/>
<c:set var="ignoreListAccessControl" value="${true}"/>


<c:if test="${not empty eventLike}">

<div class="col-xs-12 col-md-3 action-section" >
	<b title="A EventLike" style="color: green">${userContext.localeMap['event_like']}</b>
	<hr/>
	<ul>
	
	
	<li><span>${userContext.localeMap['event_like.id']}</span> ${eventLike.id}</li>
<li><span>${userContext.localeMap['event_like.like_date']}</span> ${eventLike.likeDate}</li>

	
	</ul>
</div>



</c:if>


