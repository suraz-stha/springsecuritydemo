package dgdemo

import com.dgdemo.auth.Role
import com.dgdemo.auth.User
import com.dgdemo.auth.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'suraz', password: 'suraz123')

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
    }
    def destroy = {
    }
}
