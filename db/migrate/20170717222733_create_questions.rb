class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :prompt, null: false
      t.text   :description, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
