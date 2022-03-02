class CreateBaseTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :base_tasks do |t|
      t.string :title
      t.text :description
      t.string :task_url
      t.references :base_course, null: false, foreign_key: true
      t.integer :order
      t.timestamps
    end
  end
end



