
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

