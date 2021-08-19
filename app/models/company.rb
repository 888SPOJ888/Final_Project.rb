class Company < ApplicationRecord
    has_and_belongs_to_many :courses, dependent: :destroy
    has_many :users    
end

