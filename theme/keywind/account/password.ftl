<#import "template.ftl" as layout>
<@layout.mainLayout active='password'>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("changePasswordHtmlTitle")}</h2>
        </div>
    </div>

    <form action="${url.passwordUrl}" class="form-horizontal" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <#if password.passwordSet>
            <div class="form-group">
                <div class="col-sm-2 col-md-2">
                    <label for="password" class="control-label">${msg("password")}</label>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="password" class="form-control" id="password" name="password" autofocus autocomplete="current-password">
                </div>
            </div>
        </#if>

        <div class="form-group">
            <div class="col-sm-2 col-md-2">
                <label for="password-new" class="control-label">${msg("passwordNew")}</label>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="new-password">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2 col-md-2">
                <label for="password-confirm" class="control-label">${msg("passwordConfirm")}</label>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="new-password">
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

</@layout.mainLayout>