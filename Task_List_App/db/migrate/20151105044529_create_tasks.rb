class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :duedate
      t.boolean :completed
      t.string :tasklist_id

      t.timestamps
    end
  end
end
