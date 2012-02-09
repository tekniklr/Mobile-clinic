Factory.define :user do |u|
  u.sequence(:name) {|n| "User: #{n}"}
  u.provider 'twitter'
  u.uid '12345'
  u.handle 'tekniklr'
end

Factory.define :blurb do |f|
  f.sequence(:name) {|n| "Blurb #{n}"}
  f.content "stuff, stuff, and more stuff"
end

Factory.define :contact do |f|
  f.sequence(:name) {|n| "Contact #{n}"}
  f.email    "example@example.com"
  f.phone    "(123)456-7890"
  f.content  "stuff, stuff, and more stuff"
end