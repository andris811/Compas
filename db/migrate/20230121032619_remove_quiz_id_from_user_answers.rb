class RemoveQuizIdFromUserAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_answers, :quiz_id, :references
  end
end
