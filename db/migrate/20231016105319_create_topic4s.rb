class CreateTopic4s < ActiveRecord::Migration[7.0]
  def change
    create_table :topic4s do |t|
      t.integer :question

      t.timestamps
    end
  end
end
