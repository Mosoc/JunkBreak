class Operation < ActiveRecord::Base
  validates :title, presence: true
end
