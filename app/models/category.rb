class Category < ApplicationRecord
  default_scope { order(title: :asc) }
  has_many :test
end
