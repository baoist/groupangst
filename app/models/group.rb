class Group < ActiveRecord::Base
  belongs_to :user
  has_many :discussions
  
  has_many :memberships
  has_many :members, :through => :memberships
end
