FactoryBot.define do
  factory :article do
    sequence(:title) { |i| "Titre #{i}" }
    body { "Lorem ipsum dolor sit amet, consectetur adipiscing elit." }
    status { 'public '}

    notes_count = 0
  end
end
