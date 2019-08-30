class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :content
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :todos, [:category_id, :created_at]
  end
end
