<%-- 
    Copyright © 2018 Dennis Schulmeister-Zimolong

    E-Mail: dhbw@windows3.de
    Webseite: https://www.wpvs.de/

    Dieser Quellcode ist lizenziert unter einer
    Creative Commons Namensnennung 4.0 International Lizenz.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib tagdir="/WEB-INF/tags/templates" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="base_url" value="<%=request.getContextPath()%>" />

<template:base>
    <jsp:attribute name="title">
        Benutzerprofil bearbeiten
    </jsp:attribute>

    <jsp:attribute name="head">
        <link rel="stylesheet" href="<c:url value="/css/login.css"/>" />
    </jsp:attribute>

    <jsp:attribute name="menu">
        <div class="menuitem">
            <a href="<c:url value="/app/tasks/"/>">Übersicht</a>
        </div>
    </jsp:attribute>

    <jsp:attribute name="content">
        <div class="container">
            <form method="post" class="stacked">
                <div class="column">
                    <%-- CSRF-Token C --%>
                    <input type="hidden" name="csrf_token" value="${csrf_token}">                
                    
                    <%-- Eingabefelder --%>
                    
                    <h1>Benutzername</h1>
                    <label for="signup_username">
                        
                    </label>
                    <div class="side-by-side">
                        <input type="text" name="signup_username" value="${signup_form.values["signup_username"][0]}">
                    </div>                  
                    
                     <h1>Daten ändern</h1>
                    
                    <h2>Anschrift</h2>
                    
                    <label for="signup_name">
                        Vor- und Nachname:
                        <span class="required">*</span>
                    </label>
                    <div class="side-by-side">
                        <input type="text" name="signup_name" value="${signup_form.values["signup_name"][0]}">
                    </div>
                    
                    <label for="signup_anschrift">
                        Straße und Hausnummer:
                        <span class="required">*</span>
                    </label>
                    <div class="side-by-side">
                        <input type="text" name="signup_anschrift" value="${signup_form.values["signup_anschrift"][0]}">
                    </div>

                    <label for="signup_postleitzahl">
                        Postleitzahl und Ort:
                        <span class="required">*</span>
                    </label>
                    <colgroup width="100" span="2"> 
                    <div class="side-by-side">
                        <col width="33%">
                            <input type="text" name="signup_postleitzahl" value="${signup_form.values["signup_postleitzahl"][0]}">
                       <col width ="66%">
                        <input type="text" name="signup_ort"value=" ${signup_form.values["signup_ort"][0]}">                    
                     </div>
                    
                    <h2>Kontaktdaten</h2>
                    
                     <label for="signup_telefonnummer">
                        Telefonnummer:
                        <span class="required">*</span>
                    </label>
                    <div class="side-by-side">
                        <input type="text" name="signup_telefonnummer" value="${signup_form.values["signup_telefonnummer"][0]}">
                    </div>
                     
                     <label for="signup_email">
                        E-Mail:
                        <span class="required">*</span>
                    </label>
                    <div class="side-by-side">
                        <input type="text" name="signup_email" value="${signup_form.values["signup_email"][0]}">
                    </div>
                    
                    
                    
                    <%-- Button zum Abschicken --%>
                    
                    <div class="side-by-side">
                        <button class="icon-pencil" type="submit">
                            Speichern
                        </button>
                    </div>
                </div>

                <%-- Fehlermeldungen --%>
                
                <c:if test="${!empty signup_form.errors}">
                    <ul class="errors">
                        <c:forEach items="${signup_form.errors}" var="error">
                            <li>${error}</li>
                        </c:forEach>
                    </ul>
                </c:if>
            </form>
        </div>
    </jsp:attribute>
</template:base>