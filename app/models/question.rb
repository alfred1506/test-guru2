class Question < ApplicationRecord
  belongs_to :test
  has_many :asnwers
  validates :body, presence: true
end
