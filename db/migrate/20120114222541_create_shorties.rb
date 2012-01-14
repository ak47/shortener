class CreateShorties < ActiveRecord::Migration
  def change
    create_table :shorties do |t|
      t.text :url
      t.string :key

      t.timestamps
    end
  end
end
