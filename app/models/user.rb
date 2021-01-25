class User < ApplicationRecord
  has_secure_password
  has_one :company, dependent: :destroy
end
