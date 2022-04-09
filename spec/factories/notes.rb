FactoryBot.define do
  factory :note do
    score { 1.5 }
    factory :lesser_note do
      score { -1.5 }
    end
    factory :greater_note do
      score { 21.5 }
    end
  end
end
