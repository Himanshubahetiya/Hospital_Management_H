class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    account = Account.find_by(email: params[:email])

    if account && account.authenticate(params[:password])
      token = encode_token(account)
      render json: { data: account ,token: token }, status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def encode_token(account)
    JWT.encode({ account_id: account.id, exp: 24.hours.from_now.to_i }, Rails.application.credentials.secret_key_base)
  end
end

