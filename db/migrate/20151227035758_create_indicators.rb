class CreateIndicators < ActiveRecord::Migration[5.0]
  def change
    create_table :indicators, id: :uuid do |t|
      t.uuid :created_by
      t.uuid :criterium_id
      t.boolean :active, default: true
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
