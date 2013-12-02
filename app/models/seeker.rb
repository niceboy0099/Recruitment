class Seeker < ActiveRecord::Base
 has_many :academic
 has_one :technical
 has_one :workexperience
 has_one :experience
 has_many :project, through: :experience
end
