class Opening < ActiveRecord::Base
 has_many :opening_conditions
 has_many :conditions, through: :opening_conditions
end
