class CreateKotis < ActiveRecord::Migration
  def change
    create_table :kotis do |t|
      t.string :place
      t.string :course

      t.timestamps
    end
  end
end
