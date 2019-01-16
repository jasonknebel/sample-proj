class ListItem < ApplicationRecord
  belongs_to :item, foreign_key: 'item_id'
  belongs_to :list, foreign_key: 'list_id'
end
