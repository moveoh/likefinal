class CreateHashtagsQuestions < ActiveRecord::Migration
  def change
    create_table :hashtags_questions do |t|
      t.integer :question_id
      t.integer :hashtag_id
    end
  end
end
