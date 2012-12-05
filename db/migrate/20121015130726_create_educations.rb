class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :course
      t.string :place

      t.timestamps
    end
  end
end
