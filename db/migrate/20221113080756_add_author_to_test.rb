class AddAuthorToTest < ActiveRecord::Migration[7.0]
  def change
    add_reference :tests, :author, foreing_key: { to_table: :users}
  end
end
