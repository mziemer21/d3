class User < ActiveRecord::Base
  has_one :privilege_id
  has_many :playlists

  validates :name, presence: true
  validates :email, presence: true

  # assuming permissions default to basic user privileges

# This validation needs to be looked at, it breaks the email field
# when creating a user
#
#   validates :name,  presence: true, uniqueness: true;
#   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#   validates :email, presence: true, uniqueness: true, case_sensitive: false, format: { with: VALID_EMAIL_REGEX }
#   validates :privilege, presence: true
#   has_one :privilege

end
