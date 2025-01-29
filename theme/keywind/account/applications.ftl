<#import "template.ftl" as layout>
<@layout.mainLayout active='applications'>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("applicationsHtmlTitle")}</h2>
        </div>
    </div>

    <form action="${url.applicationsUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <input type="hidden" id="referrer" name="referrer" value="${stateChecker}">

        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>${msg("application")}</th>
                    <th>${msg("availablePermissions")}</th>
                    <th>${msg("grantedPermissions")}</th>
                    <th>${msg("grantedPersonalInfo")}</th>
                    <th>${msg("additionalGrants")}</th>
                    <th>${msg("action")}</th>
                </tr>
            </thead>

            <tbody>
                <#list applications.applications as application>
                    <tr>
                        <td>
                            <#if application.effectiveUrl?has_content>
                                <a href="${application.effectiveUrl}">${advancedMsg(application.name)}</a>
                            <#else>
                                ${advancedMsg(application.name)}
                            </#if>
                        </td>

                        <td>
                            <#list application.realmRolesAvailable as role>
                                <#if role.description??>${advancedMsg(role.description)}<#else>${advancedMsg(role.name)}</#if>
                                <#if role_has_next>, </#if>
                            </#list>
                            <#list application.resourceRolesAvailable?keys as resource>
                                <#if application.realmRolesAvailable?has_content>, </#if>
                                <#list application.resourceRolesAvailable[resource] as role>
                                    <#if role.description??>${advancedMsg(role.description)}<#else>${advancedMsg(role.name)}</#if>
                                    ${msg("inResource")} ${advancedMsg(resource)}
                                    <#if role_has_next>, </#if>
                                </#list>
                            </#list>
                        </td>

                        <td>
                            <#if application.clientScopesGranted?has_content>
                                <#list application.clientScopesGranted as claim>
                                    ${advancedMsg(claim)}<#if claim_has_next>, </#if>
                                </#list>
                            </#if>
                        </td>

                        <td>
                            <#if application.claimsGranted?has_content>
                                <#list application.claimsGranted as claim>
                                    ${advancedMsg(claim)}<#if claim_has_next>, </#if>
                                </#list>
                            </#if>
                        </td>

                        <td>
                            <#list application.additionalGrants as grant>
                                ${advancedMsg(grant)}<#if grant_has_next>, </#if>
                            </#list>
                        </td>

                        <td>
                            <#if application.inUse>
                                <button type="submit" class="btn btn-default" id="revoke-${application.clientId}" name="clientId" value="${application.clientId}">${msg("revoke")}</button>
                            </#if>
                        </td>
                    </tr>
                </#list>
            </tbody>
        </table>
    </form>

</@layout.mainLayout>