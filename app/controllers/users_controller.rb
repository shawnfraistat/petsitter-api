# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin]
  # mount_uploader :image, ImageUploader

  def api_request_settings
  end

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = sign_in_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user', include: '*.*'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  def edit_profile
    current_user.update(user_update)

    if current_user.save
      render json: current_user, include: '*.*'
    else
      render json: user.errors, status: :bad_request
    end
  end

  private

  def user_creds
    params.permit(:credentials, :email, :password, :password_confirmation, :name, :zip_code, :pic_url, :image)
  end

  def sign_in_creds
    params.require(:credentials)
          .permit(:credentials, :email, :password, :password_confirmation, :name, :zip_code, :pic_url, :image)
  end

  def user_update
    params.require(:data)
          .permit(:email, :password, :password_confirmation, :name, :zip_code, :pic_url, :image)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end
end
