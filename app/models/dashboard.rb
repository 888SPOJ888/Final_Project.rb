class Dashboard < ApplicationRecord
    self.inheritance_column = nil 

    enum type: [:Daylight, :Evening, :Night]
end
