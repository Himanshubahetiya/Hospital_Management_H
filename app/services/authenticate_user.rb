# app/services/authenticate_user.rb
class AuthenticateUser
  def self.decode(token)
    begin
      decoded_token = JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')
      decoded_token.first # Return the payload of the JWT
    rescue JWT::DecodeError => e
      nil # Return nil if decoding fails
    end
  end
end
