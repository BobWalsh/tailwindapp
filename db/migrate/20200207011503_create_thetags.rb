class CreateThetags < ActiveRecord::Migration[6.0]
  def change
    create_table :thetags do |t|
      t.string :name
      t.string :color
      t.boolean :is_favorite
      t.integer :user_id

      t.timestamps
    end
  end
end
