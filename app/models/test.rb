class Test < ApplicationRecord
  has_many :questions
  has_many :user_connection_tests
  has_many :users, through: :user_connection_tests

  belongs_to :category
  belongs_to :author, class_name: 'User', foreing_key: :author_id

  #def sort_names_by_category(name_category)
  #  joins('JOIN categories ON categories.id = tests.category_id')
  #  .where(categories: {title: name_category })
  #end

  def sort_names_by_category(name_category)
    joins(:category).where(categories: { title: name_category })
  end
end
