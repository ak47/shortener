class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.timestamp :created_at
      t.belongs_to :shorty
    end
  end
end
