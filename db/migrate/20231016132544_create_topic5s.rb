class CreateTopic5s < ActiveRecord::Migration[7.0]
  def change
    create_table :topic5s do |t|
      t.integer :question

      t.timestamps
    end
  end
end
