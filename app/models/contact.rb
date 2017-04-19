class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :nachricht, presence: true
end