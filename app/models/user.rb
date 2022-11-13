class User < ApplicationRecord
  has_many :user_connection_tests
  has_many :tests, through: :user_connection_tests

  #def test_list
  #  Test.joins('JOIN user_connection_tests ON tests.id = user_connection_tests.tests_id')
  #end

  def test_list(value_level)
    test.where(level: value_level)
  end
end
