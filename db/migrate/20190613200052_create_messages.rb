class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :description, null: false
      t.string :email,     null: false

      t.timestamps
    end

    add_index :messages, :email
  end
end
