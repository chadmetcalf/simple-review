class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels, id: :uuid do |t|
      t.uuid :indicator_id
      t.integer :order

      t.timestamps
    end
  end
end
