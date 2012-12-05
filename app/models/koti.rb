class Koti < ActiveRecord::Base
  attr_accessible :course, :place
# has_many :educations
has_many :emps,:through=>:educations
end
