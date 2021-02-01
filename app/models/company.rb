class Company < ApplicationRecord
  belongs_to :user
  has_one :frontpage, dependent: :destroy
  has_one :style_setting, dependent: :destroy

end
