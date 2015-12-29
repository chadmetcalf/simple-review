class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.uuid :creator_id
      t.uuid :reviewer_id
      t.uuid :reviewee_id
      t.uuid :rubric_id
      t.boolean :active
      t.jsonb :document

      t.timestamps
    end
  end
end
