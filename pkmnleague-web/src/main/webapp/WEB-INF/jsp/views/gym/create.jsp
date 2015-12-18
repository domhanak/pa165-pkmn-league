<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<layout title="Gym">
<jsp:attribute name="body">

<form:form method="post" action="${pageContext.request.contextPath}/gym/create" modelAttribute="createGym">

  <fieldset><legend>New Gym</legend>
      <%@include file="form.jsp"%>
      <input type="submit" value="Save"></td>
 </fieldset>
</form:form>
      <c:if test="${not empty alert_failure}">
          <div class="alert alert-danger" role="alert"><c:out value="${alert_failure}"/></div>
      </c:if>
</jsp:attribute>
</layout>