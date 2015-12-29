class CreateCriteria < ActiveRecord::Migration[5.0]
  def change
    create_table :criteria, id: :uuid do |t|
      t.uuid :creator
      t.uuid :rubric_id
      t.boolean :active, default: true
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
