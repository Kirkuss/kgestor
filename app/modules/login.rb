module Login

    def credentials(name, password)
        @error = ""
        user_to_log = Users.find_by_name(name)
        if user_to_log.nil?
            @error = "No existe el usuario"
        else
            if user_to_log.password.eql?(password)
                return true
            end
        end
        return false
    end

    def user
        @user = Users.new()
    end
end