class SignupController < ApplicationController
  def email
    if request.post?
      user = User.new(params[:user])
      redirect_to signup_path('name')

    end
  end

  def name
    if request.post?

      redirect_to signup_path('photo')
    end
  end

  def photo
    if request.post?

      redirect_to signup_path('name')
    end
  end

  def location
    if request.post?

      redirect_to signup_path('location')
    end
  end

  def skills
  end

  def role
  end

  def template
  end

  def color
  end

  def custom_url
  end
end
