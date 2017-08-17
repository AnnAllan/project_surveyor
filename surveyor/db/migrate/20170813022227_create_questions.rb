class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :survey_id,   null: false
      t.string  :content
      t.integer :question_type,        null: false
      t.integer :min_value
      t.integer :max_value
      t.integer :option_number
      t.integer :selections_allowed
      t.boolean :required


      t.timestamps
    end
  end
end
