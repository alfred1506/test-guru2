class User < ApplicationRecord
  def test_list
    Test.joins('JOIN user_connection_tests ON tests.id = user_connection_tests.tests_id')
end
