class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.string :branch
      t.string :phneno
      t.text :address

      t.timestamps
    end
  end
end
