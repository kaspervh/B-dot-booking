class Company < ApplicationRecord
  belongs_to :user
  has_one :frontpage
end
