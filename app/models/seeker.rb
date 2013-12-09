class Seeker < ActiveRecord::Base
    has_many :academics, dependent: :destroy
    has_many :projects, dependent: :destroy
    has_many :technicals, dependent: :destroy
    has_many :professionals, dependent: :destroy
    
    state_machine :initial => :personal do
         state :personal
         state :academic
         state :technical
         state :professional
         state :project
      
       
    event :addpersonal do
        transition :personal => :academic
    end
    
    event :addacademic do
        transition :academic => :technical
    end
    
    event :addctechnical do
        transition :technical => :professional
    end
    
    event :addprofessional do
        transition :professional => :project
    end
    
    event :addproject do
        transition :project => :professional, :professional => :technical, :technical => :academic,  :academic => :personal
    end 
    end
    def addpersonal
    end
end
