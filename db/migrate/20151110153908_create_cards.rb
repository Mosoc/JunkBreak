class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :content
      t.integer :operation_id

      t.timestamps null: false
    end
  end
end
