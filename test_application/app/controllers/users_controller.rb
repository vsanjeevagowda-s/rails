class UsersController < ApplicationController
  def index
  	@user=User.all
  end

  def new
  	@user=User.new
  end

  def create
    binding.pry

  	@user=User.new(user_params)
    if @user.save


    binding.pry
    redirect_to users_list_path
  else
    render 'new'
  end

  end

  def edit
  	@user=User.find_by_id(params[:id])
  end

  def update
  	@user=User.find_by_id(params[:id])
  	@user.update_attributes(user_params)
  	redirect_to users_list_path
  	
  end
 def destroy
 		@user=User.find_by_id(params[:id])
 	@user.destroy
 	redirect_to users_list_path
 	
 end

 def show
 @user=User.find_by_id(params[:id])
   
 end


  private
  def user_params

    binding.pry
  	params.require(:user).permit(:first_name,:last_name,:email,:password)
  	
  end
end
