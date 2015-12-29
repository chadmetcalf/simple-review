class CreateRubrics < ActiveRecord::Migration[5.0]
  def change
    create_table :rubrics, id: :uuid do |t|
      t.uuid :creator_id
      t.boolean :active, default: true
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
