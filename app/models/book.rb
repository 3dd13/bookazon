class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :price, presence: true
  
  belongs_to :admin
  
  has_many :comments, dependent: :destroy
  
  def description
    "#{title} by #{author}"
  end
end
