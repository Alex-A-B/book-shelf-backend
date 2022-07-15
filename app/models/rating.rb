class Rating < ApplicationRecord

    validates :rating, numericality: { in: 1..5 }

    belongs_to :user
    belongs_to :book

end
