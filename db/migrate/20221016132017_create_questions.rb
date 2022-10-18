class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :body
      t.integer :level
      t.integer :test_id

      t.timestamps
    end
  end
end
