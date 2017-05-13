class CreateParsedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :parsed_urls do |t|
      t.string :url
      t.string :h1_tags, array: true, default: '{}'
      t.string :h2_tags, array: true, default: '{}'
      t.string :h3_tags, array: true, default: '{}'
      t.string :links, array: true, default: '{}'

      t.timestamps
    end
  end
end
