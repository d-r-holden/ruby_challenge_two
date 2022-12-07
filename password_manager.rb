#The password manager will need to:
    #Allow you add new, validated, passwords
    #Allow you to view a specific password
    #Allow you to see a list of all the services for which a password has been stored

#you're going to need three methods:
    #add
        #Takes two strings, the service and its password, as arguments
        #Stores the new service and its password
    #password_for
        #Takes one string, the service, as an argument
    #Returns the password for that service
    #services
        #Takes no arguments
        #Returns a list of all the services for which a password has been stored
        #Does not return all the passwords
#The passwords will be stored in hash
#The keys are services
#The values are the passwords
#This hash will need to be stored in an instance variable


class PasswordManager
    
    def initialize 
        @passwords = {}
    end


    def add(service, password)
        special_characters_to_match = /[!@$%&]/
        if password.length>=8 && password =~ special_characters_to_match
            return @passwords[service] = password
        end
    end
    
    def password_for(service)
        return @passwords[service]
    end

    def services
        return @passwords.keys
    end

end

