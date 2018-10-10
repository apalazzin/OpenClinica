package org.akaza.openclinica.controller;

import org.keycloak.authorization.client.AuthzClient;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
public class KeycloakController {
    public String buildAuthorizeUrl(HttpServletRequest request) {
        AuthzClient authzClient = AuthzClient.create();
        String coreAuthUrl = authzClient.getConfiguration().getAuthServerUrl();
        int port = request.getServerPort();
        String portStr ="";
        if (port != 80 && port != 443) {
            portStr = ":" + port;
        }
        String redirectUri = request.getScheme() + "://" + request.getServerName() + portStr + request.getContextPath() + "/pages/login";
        String authUrl = coreAuthUrl + "/realms/" + authzClient.getConfiguration().getRealm()
                + "/protocol/openid-connect/auth?scope=openid&client_id=" + authzClient.getConfiguration().getResource() +
                "&response_type=code&login=true&redirect_uri=" + redirectUri;

        return authUrl;
    }
    public String getReturnTo(HttpServletRequest req) {
        return "/OpenClinica/MainMenu";
    }

}