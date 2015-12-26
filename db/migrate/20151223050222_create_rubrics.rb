class CreateRubrics < ActiveRecord::Migration[5.0]
  def change
    create_table :rubrics, id: :uuid do |t|
      t.uuid :created_by_id
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
