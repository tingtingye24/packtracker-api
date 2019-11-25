class User < ApplicationRecord
    has_secure_password
    has_many :trackings
    validates :username , :password_digest, presence: true
    validates :username, uniqueness: true
end
