##
# This class represents a Note
#
# contains a float score greater than 0.0 and lesser than 20.0
# an article can have zero, one or many notes
class Note < ApplicationRecord
  belongs_to :article

  MAX = 20.0
  MIN = 0.0

  # validations for a new note : upper and lower score bounds
  validates :score, presence:true,  numericality: {greater_than_or_equal_to: MIN, less_than_or_equal_to: MAX }
end
