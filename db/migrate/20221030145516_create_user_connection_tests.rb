class CreateUserConnectionTests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_connection_tests do |t|

      t.timestamps
    end
  end
end
