class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  has_many :notes, dependent: :destroy  #an article can have zero, one or many notes

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  ##
  # function computeMeanNotes : computes the average note for an article
  #
  # return the mean note for an article or "The article has not any notes"
  # this function is called in the view app/views/articles/show.html.erb
  def computeMeanNotes
    sum = 0.0
    if itself.notes.count != 0
      itself.notes.each do |note|
        sum += note.score || 0
      end
      sum /= itself.notes.count
      return sum
    end
    return "The article has not any notes."
  end

end
