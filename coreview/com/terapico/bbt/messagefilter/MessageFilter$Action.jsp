
<%@ page language="java" contentType="text/plain; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="zh_CN"/>
<c:set var="ignoreListAccessControl" value="${true}"/>


<c:if test="${not empty messageFilter}">

<div class="col-xs-12 col-md-3 action-section" >
	<b title="A MessageFilter" style="color: green">${userContext.localeMap['message_filter']}</b>
	<hr/>
	<ul>
	
	
	<li><span>${userContext.localeMap['message_filter.id']}</span> ${messageFilter.id}</li>
<li><span>${userContext.localeMap['message_filter.name']}</span> ${messageFilter.name}</li>
<li><span>${userContext.localeMap['message_filter.message_count']}</span> ${messageFilter.messageCount}</li>
<li><span>${userContext.localeMap['message_filter.filter_key']}</span> ${messageFilter.filterKey}</li>
<li><span>${userContext.localeMap['message_filter.link_url']}</span> ${messageFilter.linkUrl}</li>

	
	</ul>
</div>



</c:if>


