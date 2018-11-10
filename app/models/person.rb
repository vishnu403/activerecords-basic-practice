class Person < ActiveRecord::Base
  belongs_to :role
  belongs_to :location
  def self.billable
    joins(:role).merge(Role.billable)
  end
end
