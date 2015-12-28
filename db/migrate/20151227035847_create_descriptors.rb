class CreateDescriptors < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptors, id: :uuid do |t|
      t.uuid :level_id
      t.boolean :active, default: true
      t.text :description
      t.integer :order


      t.timestamps
    end
  end
end
