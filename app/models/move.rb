class Move < ApplicationRecord
  self.inheritance_column = :_type_disabled # カラム名にtypeを使えるようにするための記述
end
