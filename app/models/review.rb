class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  validates :comment, presence: true
  validates :rating, presence: true,
                     inclusion: { in: 0..5 }
end
