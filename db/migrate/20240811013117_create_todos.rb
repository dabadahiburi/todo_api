class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
