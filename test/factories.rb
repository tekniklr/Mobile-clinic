FactoryGirl.define do
  
  factory :user do |u|
    u.sequence(:name) {|n| "User: #{n}"}
    u.provider 'twitter'
    u.uid '12345'
    u.handle 'tekniklr'
  end

  factory :blurb do |f|
    f.sequence(:name) {|n| "Blurb #{n}"}
    f.content "stuff, stuff, and more stuff"
  end

  factory :contact do |f|
    f.sequence(:name) {|n| "Contact #{n}"}
    f.email    "example@example.com"
    f.phone    "(123)456-7890"
    f.content  "stuff, stuff, and more stuff"
  end
  
end