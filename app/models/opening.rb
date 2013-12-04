class Opening < ActiveRecord::Base
 has_many :opening_conditions, dependent: :destroy
 has_many :conditions, through: :opening_conditions, dependent: :destroy
end
