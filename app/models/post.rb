class Post < ApplicationRecord
  belongs_to :pokemon
  belongs_to :ability
  belongs_to :item
end
