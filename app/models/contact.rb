class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject, :source
  validates :name, :presence => {:message => "required"}
  validates :email,:presence => {:message => "required"} 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :subject,:presence => {:message => "required"} 
  validates :message,:presence => {:message => "required"}

end
