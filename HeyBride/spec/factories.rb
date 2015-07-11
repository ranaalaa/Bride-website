FactoryGirl.define do  factory :commet do
    post nil
body "MyText"
  end
  factory :post do
    title "MyString"
body "MyText"
  end

  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    phone '01060286681'
    username 'Hanan'
    female 'true'
  end
end