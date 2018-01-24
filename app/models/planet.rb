class Planet < ApplicationRecord
  belongs_to :star
  validates :name, presence: true, length: { maximum: 50 },
                   uniqueness: { case_sensitive: false }
  validates :nature, presence: true, inclusion: { in: %w(terrestrial giant),
                                     message: "%{value} is not a valid planet type" }
end
