class CreateRubrics < ActiveRecord::Migration[5.0]
  def change
    create_table :rubrics, id: :uuid do |t|
      t.uuid :reviewee_id
      t.uuid :created_by_id
      t.boolean :closed, default: false
      t.datetime :closed_at
      t.uuid :closed_by
      t.timestamps
    end
  end
end
