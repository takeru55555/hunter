class CreateTopic3s < ActiveRecord::Migration[7.0]
  def change
    create_table :topic3s do |t|
      t.integer :question

      t.timestamps
    end
  end
end
