class User < ActiveRecord::Base
  validates: :name, presence: true
  validates: :email, presence: true, uniqueness: true { case_sensitive: false }
  validates: :privilege, presence: true
  has_one: :privilege
end
