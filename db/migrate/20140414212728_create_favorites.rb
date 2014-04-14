class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :answer_id
      t.integer :question_id
      t.timestamps
    end
  end
end
