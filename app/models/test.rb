class Test < ApplicationRecord
  has_many :questions
  has_many :user_connection_tests
  has_many :users, through: :user_connection_tests

  belongs_to :category
  belongs_to :author, class_name: 'User', foreing_key: :author_id

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than: 0 }
  validates :title, :level, uniqueness: true
  validates :title, uniqueness: { scope: :level }

  scope :easy, -> (level) { where(level: level) }
  scope :lite, -> { where(level: 0..1) }
  scope :normal, -> { where(level: 2..4) }
  score :hard, -> { where(level: 5..Float::INFINITY) }

end
