class Comment < ActiveRecord::Base
  belongs_to :book
  belongs_to :admin
end
