class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.timestamps
    end

    create_table :questions do |t|
      t.text :post
      t.integer :user_id
      t.timestamps
    end

    create_table :answers do |t|
      t.text :response
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end

    create_table :votes do |t|
      t.integer :answer_id
      t.integer :user_id
      t.timestamps
    end
  end
end
