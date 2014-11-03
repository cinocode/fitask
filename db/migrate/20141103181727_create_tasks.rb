class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :text, :required
      t.timestamp :completion_ts

      t.timestamps
    end
  end
end
