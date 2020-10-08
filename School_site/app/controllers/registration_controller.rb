class RegistrationsController < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:user).permit(:name, :username, :phone, :studentnumber, :email, :password, :password_confirmations)
    end

    def account_update_params
        params.require(:user).permit(:name, :username, :phone, :studentnumber, :email, :password, :password_confirmation, :current_password)
    end
end