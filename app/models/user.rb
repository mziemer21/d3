class User < ActiveRecord::Base
  has_one :privilege_id
  has_many :playlists

# This validation needs to be looked at, it breaks the email field
# when creating a user
#
 #   validates :name,  presence: true, uniqueness: true;
  #  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   # validates :email, presence: true, uniqueness: true, case_sensitive: false, format: { with: VALID_EMAIL_REGEX }
    #validates :privilege, presence: true
    #has_one :privilege
def self.from_omniauth(auth)
  where(auth.slice( :id)).first_or_initialize.tap do |user|
    User.find_by_email(auth.email)
  end
end

end
