Factory.define :user do |u|
  u.sequence(:name) {|n| "User: #{n}"}
  u.provider 'twitter'
  u.uid '12345'
  u.handle 'tekniklr'
end

Factory.define :blurb do |f|
  f.sequence(:name) {|n| "Facet #{n}"}
  f.content "stuff, stuff, and more stuff"
end