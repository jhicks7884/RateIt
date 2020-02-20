
[1mFrom:[0m /mnt/c/future/projects/Rateit/app/controllers/users_controller.rb @ line 36 UsersController#logged_in:

    [1;34m33[0m: [32mdef[0m [1;34mlogged_in[0m [1;34m#Logged user in redirected to user page[0m
    [1;34m34[0m:   @user = [1;34;4mUser[0m.find_by([35musername[0m: params[[33m:username[0m])
    [1;34m35[0m:  [32mif[0m @user && @user.authenticate(params[[33m:password[0m])
 => [1;34m36[0m:   binding.pry
    [1;34m37[0m: 
    [1;34m38[0m:    session[[33m:user_id[0m] = @user.id
    [1;34m39[0m:     
    [1;34m40[0m:    redirect_to [31m[1;31m'[0m[31m/show[1;31m'[0m[31m[0m
    [1;34m41[0m:   
    [1;34m42[0m:   [32melse[0m
    [1;34m43[0m:     redirect_to [31m[1;31m'[0m[31m/login[1;31m'[0m[31m[0m
    [1;34m44[0m:   [32mend[0m
    [1;34m45[0m: [32mend[0m

