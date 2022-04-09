require 'rails_helper'

RSpec.describe Note, type: :model do

  ##
  # Test 2 : tests validation for a correct note
  #
  # Checks if a note with a valid score is validated
  #
  it 'should validate an correct note' do
    article = Article.create(title: 'Article 2', body: "Ceci est l'article 2", status: 'public')
    note = build(:note, article: article)
    note.validate
    expect(note.valid?).to be true
    article.destroy

  end

  ##
  # Test 3 : tests non-validation for an uncorrect note
  #
  # Checks if a note with an unvalid score is not validated
  #
  it 'should not validate an incorrect note (score <0.0 or >20.0)' do
    lesserNote = build(:lesser_note)
    greaterNote = build(:greater_note)
    lesserNote.validate
    greaterNote.validate
    expect(lesserNote.errors.messages).to include (:score)
    expect(lesserNote.valid?).to be false
    expect(greaterNote.errors.messages).to include (:score)
    expect(greaterNote.valid?).to be false
  end

end 
