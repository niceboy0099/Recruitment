class Seeker < ActiveRecord::Base
    has_many :academics, dependent: :destroy
    has_many :projects, dependent: :destroy
    has_many :technicals, dependent: :destroy
    has_many :professionals, dependent: :destroy
    
    state_machine :initial => :new do
         state :new
         state :academic
         state :technical
         state :professional
         state :project
         state :done
      
       
    event :addpersonal do
        transition :new => :academic
    end
    
    event :addacademic do
        transition :academic => :technical
    end
    
    event :addtechnical do
        transition :technical => :professional
    end
    
    event :addprofessional do
        transition :professional => :project
    end
    
    event :addproject do
        transition :project => :done
    end 
    end
    
end
