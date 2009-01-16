import org.codehaus.groovy.grails.plugins.starksecurity.PasswordEncoder
import com.danilat.gbills.Role
import com.danilat.gbills.User
class BootStrap {

     def init = { servletContext ->
     	// Create some roles 
     	new Role(authority: Role.REGISTERED, description: 'Registered user').save() 

     	//   Create a user, and add the super user role 
     	// You do this only if you're using the DAO implementation, for LDAP users don't live in your DB. 
     	def user = new User(username: 'dani', password: PasswordEncoder.encode('danielote', 'SHA-256', true)) 
     	user.save() 
     	user.addToRoles(Role.findByAuthority(Role.REGISTERED)) 
     	user.save() 
     	}
     def destroy = {
     }
} 