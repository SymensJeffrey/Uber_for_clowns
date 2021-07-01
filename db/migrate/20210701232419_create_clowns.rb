class CreateClowns < ActiveRecord::Migration[6.1]
  def change
    create_table :clowns do |t|
      t.string :name
      t.string :shoe_size
      t.string :talent

      t.timestamps
    end
  end
end
