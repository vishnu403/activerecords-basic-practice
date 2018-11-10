class Location < ActiveRecord::Base
  has_many :people
  def self.billable
    joins(people: :role).where(roles: {billable:true}).distinct
  end
end
