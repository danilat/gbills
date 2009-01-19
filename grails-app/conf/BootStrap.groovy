class BootStrap {
  
  def authenticateService
     def init = { servletContext ->
     
       if(Role.list().size<1){
	       new Role(description:'Registered role', authority:'ROLE_REGISTERED').save()
	       new Role(description:'Admin role', authority:'ROLE_ADMIN').save()
	       new Role(description:'All users', authority:'IS_AUTHENTICATED_FULLY').save()
       }
       
       if(User.list().size<1){
	       new User(username:'bender',passwd:authenticateService.encodePassword('bender'),email:'your.email1@your.domain.com',userRealName:'Bender',enabled:true)
	       .addToAuthorities(Role.findByAuthority('ROLE_ADMIN'))
	       .save()
	       
	       new User(username:'fry',passwd:authenticateService.encodePassword('fry'),email:'your.email2@your.domain.com',userRealName:'Fry',enabled:true)
	       .addToAuthorities(Role.findByAuthority('ROLE_REGISTERED'))
	       .save()
	       
	       def auth = Role.findByAuthority('IS_AUTHENTICATED_FULLY')
	       User.findAll().each{user->
	         user.addToAuthorities(auth)
	       }
       }
       
       if(Requestmap.list().size<1){
	       //All roles  
	       new Requestmap(url: '/home/**', configAttribute: 'IS_AUTHENTICATED_FULLY').save()
	       
	       //Registered role
	       new Requestmap(url: '/client/**', configAttribute: 'ROLE_REGISTERED').save()
	       new Requestmap(url: '/bill/**', configAttribute: 'ROLE_REGISTERED').save()
	       new Requestmap(url: '/item/**', configAttribute: 'ROLE_REGISTERED').save()
	       
	       //Admin role
	       new Requestmap(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
	       new Requestmap(url: '/requestmap/**', configAttribute: 'ROLE_ADMIN').save()
	       new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
       }
     }
     def destroy = {
     }
} 