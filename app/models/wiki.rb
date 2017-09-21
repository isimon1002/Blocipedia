class Wiki < ApplicationRecord
  belongs_to :user

  #before_validation { self.private = false }
end
