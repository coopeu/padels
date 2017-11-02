class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :select_plan, only: :new
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
  
  private
    def select_plan
      unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2' || params[:plan] == '3' || params[:plan] == '4')
        flash[:notice] = "Please select a membership plan to sign up."
        redirect_to root_url
      end
    end
 
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username)
  end


end