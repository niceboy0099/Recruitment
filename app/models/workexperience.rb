class Workexperience < ActiveRecord::Base
 belongs_to :seeker
 has_one :experience
 has_one :fresher
end
