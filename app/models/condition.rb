class Condition < ActiveRecord::Base
has_many :opening_conditions, dependent: :destroy
has_many :openings, through: :opening_conditions, dependent: :destroy
end
