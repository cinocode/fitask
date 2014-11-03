class Task < ActiveRecord::Base
  validates :text, presence: true
end
