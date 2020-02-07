class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.text :body
      t.text :description
      t.boolean :is_favorite
      t.string :source_flag
      t.string :url
      t.integer :time_value
      t.integer :money_value
      t.datetime :date_next_action
      t.text :the_tag_list
      t.text :original_text
      t.string :flags
      t.string :page_image_url
      t.string :page_image_status
      t.string :code_project_name
      t.string :code_file_name
      t.string :code_file_language
      t.text :code_body



      t.timestamps
    end
  end
end
