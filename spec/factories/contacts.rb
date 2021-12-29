FactoryBot.define do
    factory :contact do
      name { Faker::Name.name }
      date_of_birth { "2021-10-06" }
      phone { '(+57) 320-432-05-09' }
      address { Faker::Address.country }
      # FIXME it is broken
      # credit_card { Faker::Finance.credit_card(:mastercard, :visa) }
      credit_card { '4111111111111111' }
      franchise { Faker::Business.credit_card_type }
      email { Faker::Internet.email }
      user
    end
end