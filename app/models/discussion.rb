class Discussion < ActiveRecord::Base
  validates_presence_of :author, :subject, :message
end
