class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 8}
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email,password)
    # If the user exists AND the password entered is correct.
    email = email.delete(" ").downcase
    user = User.find_by_email(email)
    if user && user.authenticate(password)
      return user
    end 
  end

end
