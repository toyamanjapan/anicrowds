class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  has_many :concepts

def count
  difference = (self.created_at + 7.days).to_date - Time.now.to_date
  difference.to_i
end

end