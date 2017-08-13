class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :responses

      t.timestamps
    end
  end
end
