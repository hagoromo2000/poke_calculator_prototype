class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power
      t.string :type
      t.string :damage_class

    end
  end
end
