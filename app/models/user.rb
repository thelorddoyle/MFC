class User < ApplicationRecord

    has_many :nfts

    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, length: { minimum: 5, maximum: 20 }
    validates :password, presence: true, length: { minimum: 5, maximum: 20 }

end