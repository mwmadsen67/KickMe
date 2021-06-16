class Sneaker < ApplicationRecord

  has_many :reviews,
    foreign_key: :sneaker_id,
    class_name: :Review

    # reviewers we expect to get a User object
  has_many :reviewers,
    through: :reviews,
    source: :user

  
end
