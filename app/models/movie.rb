class Movie < ActiveRecord::Base
  has_many :reviews

  has_attached_file :movie_cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :movie_cover, :content_type => /\Aimage\/.*\Z/


end
