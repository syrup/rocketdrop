class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.boolean :single_use
      t.attachment :filename

      t.timestamps
    end
  end
end
