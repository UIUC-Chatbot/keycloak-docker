<#macro mainLayout active>
<!DOCTYPE html>
<html>
<head>
    <title>${msg("accountManagementTitle")}</title>
    <meta charset="UTF-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/css/account.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar-content">
            <div class="navbar-title">
                ${msg("accountManagementTitle")}
            </div>
            <div class="navbar-right">
                <#if realm.internationalizationEnabled>
                    <div class="language-picker">
                        <#list locale.supported as l>
                            <a href="${l.url}">${l.label}</a>
                        </#list>
                    </div>
                </#if>
                <div class="logout">
                    <a href="${url.logoutUrl}">${msg("doSignOut")}</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="card-pf">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                    <#if message.type=='error' ><span class="pficon pficon-error-circle-o"></span></#if>
                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                </div>
            </#if>

            <#import "components/navigation.ftl" as nav>
            <@nav.mainNav active=active/>

            <#nested "content">
        </div>
    </div>
</body>
</html>
</#macro>