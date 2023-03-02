class UsersController < ApplicationController
    #Routing

    #Getting Data

    get "/users" do
        users = User.all
        users.to_json
    end

    #Post Data
    post "/users" do
        username = [params:myusername]

        if(user_name.present? )
            check_user_exists =  User.where(id: params[:id]).count()
             puts("123...yes ", check_user_exists)

             if check_user_exists < 1
                user = User.create(username: username,)
                if user
                    message = {:succcess => "User created successfully!!"}
                    message.to_json
                else
                    message = {:error => "Error saving user!"}
                    message.to_json
                end
            else
                message = {:error => "User exists!"}
                message.to_json
            end
        else
            message = {:error => "All fields should be field!"}
            message.to_json
        end
    end
end