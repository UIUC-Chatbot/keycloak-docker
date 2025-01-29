<#import "template.ftl" as layout>
<@layout.mainLayout active='totp'>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("authenticatorTitle")}</h2>
        </div>
    </div>

    <#if totp.enabled>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th colspan="2">${msg("configureAuthenticators")}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="provider">${msg("mobile")}</td>
                    <td class="action">
                        <form action="${url.totpUrl}" method="post" class="form-inline">
                            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
                            <button type="submit" class="btn btn-default" id="remove-mobile" name="submitAction" value="Remove">
                                <i class="pficon pficon-delete"></i>
                            </button>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    <#else>
        <hr/>
        <ol class="list-unstyled">
            <li>
                <h3>${msg("totpStep1")}</h3>
                <p>${msg("totpStep1DeviceDescription")}</p>
                <ul>
                    <#list totp.policy.supportedApplications as app>
                        <li>${app}</li>
                    </#list>
                </ul>
            </li>

            <li>
                <h3>${msg("totpStep2")}</h3>
                <p>${msg("totpStep2Description")}</p>
                <img id="qrCode" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"/>
                <br/>
                <span class="code">${totp.totpSecretEncoded}</span>
            </li>

            <li>
                <h3>${msg("totpStep3")}</h3>
                <p>${msg("totpStep3Description")}</p>
            </li>
        </ol>

        <hr/>

        <form action="${url.totpUrl}" class="form-horizontal" method="post">
            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
            
            <div class="form-group">
                <div class="col-sm-2 col-md-2">
                    <label for="totp" class="control-label">${msg("authenticatorCode")}</label>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="text" class="form-control" id="totp" name="totp" autocomplete="off" autofocus>
                    <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-2 col-md-2">
                </div>
                <div class="col-sm-10 col-md-10">
                    <button type="submit" class="btn btn-primary" name="submitAction" value="Save">${msg("doSave")}</button>
                </div>
            </div>
        </form>
    </#if>

</@layout.mainLayout>