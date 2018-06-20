class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :client, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
