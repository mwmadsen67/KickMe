class User < ApplicationRecord

  has_many :reviews,
    foreign_key: :user_id,
    class_name: :Review
  
end