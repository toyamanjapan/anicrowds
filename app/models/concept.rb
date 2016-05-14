class Concept < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :reviews
  belongs_to :company

  validates :title, presence: true

  def count
  difference = (project.created_at + 7.days).to_date - Time.now.to_date
  difference.to_i
end

end
