<#import "template.ftl" as layout>
<@layout.mainLayout active='log'>
    <div class="row">
        <div class="col-md-10">
            <h2>${msg("accountLogHtmlTitle")}</h2>
        </div>
    </div>

    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>${msg("date")}</th>
                <th>${msg("event")}</th>
                <th>${msg("ip")}</th>
                <th>${msg("client")}</th>
                <th>${msg("details")}</th>
            </tr>
        </thead>

        <tbody>
            <#list log.events as event>
                <tr>
                    <td>${event.date?datetime}</td>
                    <td>${event.event}</td>
                    <td>${event.ipAddress}</td>
                    <td>${event.client!}</td>
                    <td>
                        <#if event.details?has_content>
                            <#list event.details as detail>
                                ${detail.key}: ${detail.value}<#if detail_has_next>,</#if>
                            </#list>
                        </#if>
                    </td>
                </tr>
            </#list>
        </tbody>
    </table>
</@layout.mainLayout>