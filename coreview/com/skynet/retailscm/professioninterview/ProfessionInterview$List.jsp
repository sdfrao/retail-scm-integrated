<%@ page import='java.util.*,com.skynet.retailscm.*'%>
<%@ page language="java" contentType="text/plain; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="zh_CN"/>
<c:set var="ignoreListAccessControl" value="${true}"/>

<c:set var="professionInterviewList" value="${result.professionInterviewList}"/>

<c:if test="${ empty professionInterviewList}" >
	<div class="row" style="font-size: 30px;">
		<div class="col-xs-12 col-md-12" style="padding-left:20px">
		 ${userContext.localeMap['@not_found']}${userContext.localeMap['profession_interview']}! 
		 <a href="./${ownerBeanName}Manager/addProfessionInterview/${result.id}/"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
		 
		 
		 
		 </div>
	</div>

</c:if>




	

 <c:if test="${not empty result.professionInterviewList}" >
    
    
<%

 	SmartList list=(SmartList)pageContext.getAttribute("professionInterviewList"); 
 	int totalCount = list.getTotalCount();
 	List pages = list.getPages();
 	pageContext.setAttribute("pages",pages); 
 	pageContext.setAttribute("totalCount",totalCount); 
 	//the reason using scriptlet here is the el express is currently not able resolv common property from a subclass of list
%>
    
 	   
    <div class="row" style="font-size: 30px;">
		<div class="col-xs-12 col-md-12" style="padding-left:20px">
		<i class='fa fa-table'></i> ${userContext.localeMap['profession_interview']}(${totalCount})
		<a href="./${ownerBeanName}Manager/addProfessionInterview/${result.id}/"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
		 
		 		 	<div class="btn-group" role="group" aria-label="Button group with nested dropdown">		
	<c:forEach var="action" items="${result.actionList}">
		<c:if test="${'professionInterviewList' eq action.actionGroup}">
		<a class="btn btn-${action.actionLevel} btn-sm" href="${action.managerBeanName}/${action.actionPath}">${userContext.localeMap[action.localeKey]}</a>
		</c:if>
	</c:forEach>
	</div><!--end of div class="btn-group" -->
	
		 
		 
		 
		 </div>
 </div>
    
    
<div class="table-responsive">


<c:set var="currentPageNumber" value="1"/>	



<nav aria-label="Page navigation example">
  <ul class="pagination">
<c:forEach var="page" items="${pages}"> 
<c:set var="classType" value=""/>
<c:if test='${page.selected}' >
<c:set var="classType" value="active"/>
<c:set var="currentPageNumber" value="${page.pageNumber}"/>
</c:if>


	<li class="page-item ${classType}">
		<a href='#${ownerBeanName}Manager/load${ownerClassName}/${result.id}/professionInterviewList;professionInterviewListCurrentPage=${page.pageNumber}/' 
			class='page-link page-action '>${page.title}</a>
	</li>
</c:forEach>
 </ul>
</nav>


   


	<table class="table table-striped" pageToken='professionInterviewListCurrentPage=${currentPageNumber}'>
		<thead><tr>
		<c:if test="${param.referName ne 'id'}">
	<th>${userContext.localeMap['profession_interview.id']}</th>
</c:if>
<c:if test="${param.referName ne 'who'}">
	<th>${userContext.localeMap['profession_interview.who']}</th>
</c:if>
<c:if test="${param.referName ne 'interviewTime'}">
	<th>${userContext.localeMap['profession_interview.interview_time']}</th>
</c:if>
<c:if test="${param.referName ne 'comments'}">
	<th>${userContext.localeMap['profession_interview.comments']}</th>
</c:if>
<th>${userContext.localeMap['@action']}</th>
		</tr></thead>
		<tbody>
			
			<c:forEach var="item" items="${result.professionInterviewList}">
				<tr currentVersion='${item.version}' id="professionInterview-${item.id}" ><td><a class="link-action-removed" href="./professionInterviewManager/loadProfessionInterviewDetail/${item.id}/"> ${item.id}</a></td>
<c:if test="${param.referName ne 'who'}">	<td contenteditable='true' class='edit-value'  propertyToChange='who' storedCellValue='${item.who}' prefix='${ownerBeanName}Manager/updateProfessionInterview/${result.id}/${item.id}/'>${item.who}</td>
</c:if><c:if test="${param.referName ne 'interviewTime'}">	<td contenteditable='true' class='edit-value'  propertyToChange='interviewTime' storedCellValue='${item.interviewTime}' prefix='${ownerBeanName}Manager/updateProfessionInterview/${result.id}/${item.id}/'><fmt:formatDate pattern="yyyy-MM-dd" value="${item.interviewTime}" /></td>
</c:if><c:if test="${param.referName ne 'comments'}">	<td contenteditable='true' class='edit-value'  propertyToChange='comments' storedCellValue='${item.comments}' prefix='${ownerBeanName}Manager/updateProfessionInterview/${result.id}/${item.id}/'>${item.comments}</td>
</c:if>
				<td>

				<a href='#${ownerBeanName}Manager/removeProfessionInterview/${result.id}/${item.id}/' class='delete-action btn btn-danger btn-xs'><i class="fa fa-trash-o fa-lg"></i> ${userContext.localeMap['@delete']}</a>
				<a href='#${ownerBeanName}Manager/copyProfessionInterviewFrom/${result.id}/${item.id}/' class='copy-action btn btn-success btn-xs'><i class="fa fa-files-o fa-lg"></i> ${userContext.localeMap['@copy']} </a>

				</td>
				</tr>
			</c:forEach>
		
		</tbody>
	</table>	
	

</div></c:if>


