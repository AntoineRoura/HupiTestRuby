require 'rails_helper'

RSpec.describe Article, type: :model do

  ##
  # Test 1 : tests valid persistence for a correct note
  #
  # Checks if a note is well persisted
  # i.e. if Article.count = Note.count = article.notes.count = 1
  # where article is the associated article
  #
  it 'should persist a correct note in an article' do
    
    article = Article.create(title: 'Article 1', body: "Ceci est l'article 1", status: 'public')
    article.notes << Note.new(score: 1.5)
    article.save
    expect(Article.count).to eq(1)
    expect(Note.count).to eq(1)
    expect(article.notes.count).to eq(1)
    article.destroy
    
  end
end
