class CreateParsedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :parsed_urls do |t|
      t.string :url
      t.array :h1
      t.array :h2
      t.array :h3
      t.array :links

      t.timestamps
    end
  end
end
