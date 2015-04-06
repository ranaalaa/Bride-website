module RequestMacros
  include Warden::Test::Helpers
  def sign_in_as_a_user
    @user ||= FactoryGirl.create :confirmed_user
    login_as @user
  end
end