class AddAnswersCorrect < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :correct, :string
  end
end
