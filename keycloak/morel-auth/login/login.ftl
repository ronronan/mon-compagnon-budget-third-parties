<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
    <#elseif section = "form">
        <#if realm.password>
            <img src="${url.resourcesPath}/img/logo.png">
            <h2>Service</h2>
            <h2>d'authentification</h2>
            <form class="loginbox" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <input id="username" placeholder="Email" type="text" name="username">
                <input id="password" placeholder="Mot de passe" type="password" name="password">
                <input class="btn-submit" type="submit" value="Login">
            </form>
        </#if>
    </#if>
</@layout.registrationLayout>
