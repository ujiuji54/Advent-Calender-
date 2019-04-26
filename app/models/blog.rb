class Blog < ApplicationRecord
  belongs_to :user
  validates :start_time, presence: true, uniqueness: true
end
