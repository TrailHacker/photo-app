require 'factory_girl'
FactoryGirl.find_definitions

module ControllerMacros
  def login_user

    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
    end

  end

end
