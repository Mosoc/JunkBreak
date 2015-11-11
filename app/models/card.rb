class Card < ActiveRecord::Base
    belongs_to :operation
    validates :content, presence: true
end
