<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<my:layout title="Pokemon">
<jsp:attribute name="body">

    <h1> Pokemons </h1>
      <table class="table">
          <tr>
              <th>Pokemon</th>
              <th>Pokemon type</th>
              <th>Name</th>
              <th>Level</th>
          </tr>
          <c:forEach items="${pokemons}" var="pokemon">
              <tr>
                  <td><c:out value="${pokemon.name}"/></td>
                  <td><c:out value="${pokemon.type}"/></td>
                  <td><c:out value="${pokemon.level}"/></td>
                  <td><c:out value="${pokemon.trainer}"/></td>
              </tr>
          </c:forEach>
      </table>

    <a class ="btn btn-info" href="${pageContext.request.contextPath}/pokemon/create">Create</a>
</jsp:attribute>
</my:layout>