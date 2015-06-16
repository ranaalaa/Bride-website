FactoryGirl.define do  factory :adminster do
    email "MyString"
vendor nil
  end

  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    phone '01060286681'
    username 'Hanan'
    female 'true'
  end
end