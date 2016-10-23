class SignupController < ApplicationController
  before_action :set_user, except: [:email]

  def email
    if request.post?
      user = User.new(user_params)
      user.save
      session[:user_id] = user.id
      redirect_to signup_path('name')
    end
  end

  def name
    if request.post?
      @user.update(user_params)
      redirect_to signup_path('photo')
    end
  end

  def photo
    if request.post?
      @user.update(user_params)
      redirect_to signup_path('address')
    end
  end

  def address
    if request.post?
      @user.update(user_params)
      redirect_to signup_path('skills')
    end
  end

  def skills
    if request.post?
      @user.update(user_params)
      redirect_to signup_path('template')
    end
  end

  def template
    if request.post?
      @user.update(user_params)
      redirect_to @user
    end
  end

  private

  def user_params
    params.require(:user).permit! #(:first_name, :last_name, :email, :custom_url,, :bio, :address, :template_id, :twitter_url, :linkedin_url, :github_url)
  end

  def set_user
    @user = User.find(session[:user_id])
  end
end
