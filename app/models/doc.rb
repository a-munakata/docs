class Doc < ActiveRecord::Base
  attr_accessible :category_id,
                  :anchor_name,
                  :source

  belongs_to :category

  validates :category_id, uniqueness: { scope: [ :anchor_name ] }

end
