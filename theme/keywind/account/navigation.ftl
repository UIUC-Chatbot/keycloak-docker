<#macro mainNav active>
<div class="nav-container">
    <ul class="nav nav-tabs">
        <li class="${active=='account' ? 'active' : ''}">
            <a href="${url.accountUrl}">${msg("account")}</a>
        </li>
        <#if features.passwordUpdateSupported>
            <li class="${active=='password' ? 'active' : ''}">
                <a href="${url.passwordUrl}">${msg("password")}</a>
            </li>
        </#if>
        <li class="${active=='totp' ? 'active' : ''}">
            <a href="${url.totpUrl}">${msg("authenticator")}</a>
        </li>
        <#if features.identityFederation>
            <li class="${active=='social' ? 'active' : ''}">
                <a href="${url.socialUrl}">${msg("federatedIdentity")}</a>
            </li>
        </#if>
        <li class="${active=='sessions' ? 'active' : ''}">
            <a href="${url.sessionsUrl}">${msg("sessions")}</a>
        </li>
        <li class="${active=='applications' ? 'active' : ''}">
            <a href="${url.applicationsUrl}">${msg("applications")}</a>
        </li>
        <#if features.log>
            <li class="${active=='log' ? 'active' : ''}">
                <a href="${url.logUrl}">${msg("log")}</a>
            </li>
        </#if>
    </ul>
</div>
</#macro>