class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :body
      t.string :result
      t.string :boolean
      t.string :question_id

      t.timestamps
    end
  end
end
