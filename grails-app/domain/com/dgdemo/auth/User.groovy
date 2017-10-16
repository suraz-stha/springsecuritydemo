package com.dgdemo.auth

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
//    String role
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    //static hasOne = [roles: Role]

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {

        username nullable: false, blank: false, unique: true
        password nullable: false, blank: false, password: true
//        role(nullable: false,blank: false,inList: ["ROLE_ADMIN","ROLE_EDITOR"])
    }

    static mapping = {
	    password column: '`password`'
    }
}
