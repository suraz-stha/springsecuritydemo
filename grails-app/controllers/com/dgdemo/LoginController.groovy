package com.dgdemo

import grails.config.Config
import grails.core.support.GrailsConfigurationAware

class LoginController extends grails.plugin.springsecurity.LoginController implements GrailsConfigurationAware {

//    def index() { }
    def auth() {

        def conf = getConf()

        if (springSecurityService.isLoggedIn()) {
            redirect uri: conf.successHandler.defaultTargetUrl
            return
        }

        String postUrl = request.contextPath + conf.apf.filterProcessesUrl
        render view: 'auth'
    }
    @Override
    void setConfiguration(Config co) {

    }
}
