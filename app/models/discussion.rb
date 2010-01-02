class Discussion < ActiveRecord::Base
  belongs_to :group
  has_many :messages
end
