class Course < ApplicationRecord
	has_many :users


def self.search(search)
  
  where("code LIKE ?", "%#{search}%")
end


end
