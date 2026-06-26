class CreatePhotos < ActiveRecord::Migration[8.1]
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :author_name

      t.timestamps
    end
  end
end
