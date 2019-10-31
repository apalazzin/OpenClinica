<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="org.akaza.openclinica.i18n.words" var="resword"/>

<div style="display:none" id="archivableCasebook">
    <div style="width: 750px">

        <div class="tablebox_center">

            <form name="casebookLink">

                <div style="margin-top:0;margin-bottom:10px;" class="connect-widget">
                    <b><fmt:message key="viewStudySubject.casebookGenerationForm.casebookFormat"
                                    bundle="${resword}"/></b><br>
                    <!-- <input type="radio" checked="" value="html/print" id="casebookTypeHtml" name="casebookType">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.format.html" bundle="${resword}"/><br> -->
                    <input type="radio" checked="" value="json/view" id="casebookTypeJson" name="casebookType">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.format.json" bundle="${resword}"/><br>
                    <input type="radio" value="xml/view" id="casebookTypeXml" name="casebookType">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.format.xml" bundle="${resword}"/><br>
                </div>

                <div style="margin-bottom:10px;" class="connect-widget">
                    <b><fmt:message key="viewStudySubject.casebookGenerationForm.options" bundle="${resword}"/></b><br>
                    <input type="checkbox" checked="" value="includeDNs=y" id="casebookParamDn" name="casebookParam">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.option.dn" bundle="${resword}"/>
                    <input type="checkbox" checked="" value="includeAudits=y" id="casebookParamAudit" name="casebookParam">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.option.auditTrail" bundle="${resword}"/>
                    <input type="checkbox" checked="" value="includeMetadata=y" anti-value="includeMetadata=n" id="casebookParamMetadata" name="casebookParam">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.option.includeMetadata" bundle="${resword}"/>
                    <input type="checkbox" checked="" value="showArchived=y" anti-value="showArchived=n" id="casebookParamArchived" name="casebookParam">
                    <fmt:message key="viewStudySubject.casebookGenerationForm.option.includeArchived" bundle="${resword}"/>
                </div>

                <div style="margin-bottom:10px;" class="connect-widget">

                    <div id="casebookButtons">
                        <input type="button" id="casebookLinkBtn" class="button_medium"
                               value="<fmt:message key="viewStudySubject.casebookGenerationForm.button.getLink" bundle="${resword}"/>"
                               name="GetLink">
                        <input type="button" id="casebookOpenBtn" class="button_medium"
                               value="<fmt:message key="viewStudySubject.casebookGenerationForm.button.open" bundle="${resword}"/>"
                               name="exit">
                    </div>
                    <div style="display:none" id="casebookLinkDisplay"><br>
                        <fmt:message key="viewStudySubject.casebookGenerationForm.button.getLink.description"
                                     bundle="${resword}"/><br>
                        <input type="text" id="casebookLinkText" size="100"></div>
                </div>
            </form>

        </div>

    </div>

</div>
<!-- casebookGenerationForm.jsp - END -->