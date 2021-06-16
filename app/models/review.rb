class Review < ApplicationRecord

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :sneaker,
    foreign_key: :sneaker_id,
    class_name: :Sneaker


end
