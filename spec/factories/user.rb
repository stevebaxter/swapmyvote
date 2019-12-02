FactoryBot.define do
  factory :user do
    name { "John" }
    email { "#{name.gsub(/\s/, ".").downcase}@example.com" }

    factory :ready_to_swap_user1 do
      association :constituency, factory: :ons_constituency, name: "Constituency1"
      association :preferred_party, factory: :party, name: "PartyA", color: "green"
      association :willing_party, factory: :party, name: "PartyB", color: "orange"
    end

    factory :ready_to_swap_user2 do
      association :constituency, factory: :ons_constituency, name: "Constituency2"
      association :preferred_party, factory: :party, name: "PartyB", color: "orange"
      association :willing_party, factory: :party, name: "PartyA", color: "green"
    end
  end
end
