class Article < ApplicationRecord
  include Visible

  #TODO: https://guides.rubyonrails.org/getting_started.html#deleting-associated-objects

  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }  
end
