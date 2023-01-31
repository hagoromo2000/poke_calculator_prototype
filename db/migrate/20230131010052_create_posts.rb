class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.text :body
      t.integer :ev_hp,               default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :ev_attack,           default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :ev_defense,          default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :ev_special_attack,   default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :ev_special_defense,  default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :ev_speed,            default: 0, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 252}
      t.integer :iv_hp,               default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.integer :iv_attack,           default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.integer :iv_defense,          default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.integer :iv_special_attack,   default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.integer :iv_special_defense,  default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.integer :iv_speed,            default: 31, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31}
      t.string :tera_type, null:false
      t.references :pokemon, foreign_key: true
      t.references :ability, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
