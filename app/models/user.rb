class User < ActiveRecord::Base
  has_one :privilege
  has_many :playlist

# This validation needs to be looked at, it breaks the email field
# when creating a user
=begin
    validates :name,  presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, case_sensitive: false, format: { with: VALID_EMAIL_REGEX }
    #validates :privilege, presence: true
    #has_one :privilege

def email
  @email
end

def email=(val)
  @email = val
end

def username
  @username
end

def username=(val)
  @username = val
end

def privilege
  @privilege
end

def privilege=(val)
  @privilege = val
end
=end
end
