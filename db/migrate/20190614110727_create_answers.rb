class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.belongs_to :message, index: true
      t.text :description, null: false

      t.timestamps
    end
  end
end
