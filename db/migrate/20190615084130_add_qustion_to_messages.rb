class AddQustionToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :question, :boolean, default: false
    add_index :messages, :question
  end
end
