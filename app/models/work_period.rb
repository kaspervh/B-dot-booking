class WorkPeriod < ApplicationRecord
  belongs_to :company
  has_many :appointments, dependent: :destroy
end
