require 'faker'
countries = [
  "Afghanistan",
  "Albania",
  "Algeria",
  "American Samoa",
  "Andorra",
  "Angola",
  "Anguilla",
  "Antarctica",
  "Antigua Barbuda (and)",
  "Argentina",
  "Armenia",
  "Aruba",
  "Australia",
  "Austria",
  "Azerbaijan",
  "Bahamas",
  "Bahrain",
  "Bangladesh",
  "Barbados",
  "Belarus",
  "Belgium",
  "Belize",
  "Benin",
  "Bermuda",
  "Bhutan",
  "Bolivia",
  "Bonaire, Sint Eustatius and Saba",
  "Bosnia Herzegovina",
  "Botswana",
  "Bouvet Island",
  "Brazil",
  "British Indian Ocean Territory",
  "Brunei Darussalam",
  "Bulgaria",
  "Burkina Faso",
  "Burundi",
  "Cabo Verde",
  "Cambodia",
  "Cameroon",
  "Canada",
  "Cayman Islands",
  "Central African Republic",
  "Chad",
  "Chile",
  "China",
  "Christmas Island",
  "Cocos Islands",
  "Colombia",
  "Comoros",
  "DR Congo",
  "Congo",
  "Cook Islands",
  "Costa Rica",
  "Croatia",
  "Cuba",
  "Curaçao",
  "Cyprus",
  "Czechia",
  "Côte d'Ivoire",
  "Denmark",
  "Djibouti",
  "Dominica",
  "Dominican Republic",
  "Ecuador",
  "Egypt",
  "El Salvador",
  "Equatorial Guinea",
  "Eritrea",
  "Estonia",
  "Eswatini",
  "Ethiopia",
  "Falkland Islands [Malvinas]",
  "Faroe Islands",
  "Fiji",
  "Finland",
  "France",
  "French Guiana",
  "French Polynesia",
  "Gabon",
  "Gambia",
  "Georgia",
  "Germany",
  "Ghana",
  "Gibraltar",
  "Greece",
  "Greenland",
  "Grenada",
  "Guadeloupe",
  "Guam",
  "Guatemala",
  "Guernsey",
  "Guinea",
  "Guinea-Bissau",
  "Guyana",
  "Haiti",
  "Heard Island and McDonald Islands",
  "Holy See",
  "Honduras",
  "Hong Kong",
  "Hungary",
  "Iceland",
  "India",
  "Indonesia",
  "Iran",
  "Iraq",
  "Ireland",
  "Isle of Man",
  "Israel",
  "Italy",
  "Jamaica",
  "Japan",
  "Jersey",
  "Jordan",
  "Kazakhstan",
  "Kenya",
  "Kiribati",
  "North Korea",
  "South Korea",
  "Kuwait",
  "Kyrgyzstan",
  "Lao People's Democratic Republic",
  "Latvia",
  "Lebanon",
  "Lesotho",
  "Liberia",
  "Libya",
  "Liechtenstein",
  "Lithuania",
  "Luxembourg",
  "Macao",
  "Madagascar",
  "Malawi",
  "Malaysia",
  "Maldives",
  "Mali",
  "Malta",
  "Marshall Islands",
  "Martinique",
  "Mauritania",
  "Mauritius",
  "Mayotte",
  "Mexico",
  "Micronesia",
  "Moldova",
  "Monaco",
  "Mongolia",
  "Montenegro",
  "Montserrat",
  "Morocco",
  "Mozambique",
  "Myanmar",
  "Namibia",
  "Nauru",
  "Nepal",
  "Netherlands",
  "New Caledonia",
  "New Zealand",
  "Nicaragua",
  "Niger",
  "Nigeria",
  "Niue",
  "Norfolk Island",
  "Northern Mariana Islands",
  "Norway",
  "Oman",
  "Pakistan",
  "Palau",
  "Palestine",
  "Panama",
  "Papua New Guinea",
  "Paraguay",
  "Peru",
  "Philippines",
  "Pitcairn",
  "Poland",
  "Portugal",
  "Puerto Rico",
  "Qatar",
  "North Macedonia",
  "Romania",
  "Russian Federation",
  "Rwanda",
  "Réunion",
  "Saint Barthélemy",
  "Saint Helena, Ascension and Tristan da Cunha",
  "Saint Kitts and Nevis",
  "Saint Lucia",
  "Saint Martin (French part)",
  "Saint Pierre and Miquelon",
  "Saint Vincent and the Grenadines",
  "Samoa",
  "San Marino",
  "Sao Tome and Principe",
  "Saudi Arabia",
  "Senegal",
  "Serbia",
  "Seychelles",
  "Sierra Leone",
  "Singapore",
  "Sint Maarten (Dutch part)",
  "Slovakia",
  "Slovenia",
  "Solomon Islands",
  "Somalia",
  "South Africa",
  "South Georgia and the South Sandwich Islands",
  "South Sudan",
  "Spain",
  "Sri Lanka",
  "Sudan",
  "Suriname",
  "Svalbard",
  "Sweden",
  "Switzerland",
  "Syrian Arab Republic",
  "Taiwan",
  "Tajikistan",
  "Tanzania",
  "Thailand",
  "Timor-Leste",
  "Togo",
  "Tokelau",
  "Tonga",
  "Trinidad Tobago",
  "Tunisia",
  "Turkey",
  "Turkmenistan",
  "Turks Caicos Islands",
  "Tuvalu",
  "Uganda",
  "Ukraine",
  "United Arab Emirates",
  "United Kingdom of Great Britain and Northern Ireland",
  "United States of America",
  "Uruguay",
  "Uzbekistan",
  "Vanuatu",
  "Venezuela",
  "Viet Nam",
  "Virgin Islands (British)",
  "Virgin Islands (U.S.)",
  "Wallis and Futuna",
  "Western Sahara",
  "Yemen",
  "Zambia",
  "Zimbabwe",
  "Åland Islands"
]
groups = ['small circle (1-3)', 'bunch (4-6)', 'party (7-9)', 'the more, the merrier (>10)']
pets = ['Sure! Woof not?', 'Absolutely not!']
locations = ['An urban experience', 'The great outdoors', 'A relaxing getaway', 'The wide open road', 'Something more unique']
activities = [
  'surfing',
  'hiking',
  'kayaking',
  'diving',
  'racing',
  'climbing',
  'skydiving',
  'partying',
  'meditation',
  'volunteering',
  'wine tasting',
  'fishing',
  'hunting',
  'other'
]

puts 'Cleaning database...'
Trip.destroy_all
Answer.destroy_all
Question.destroy_all
User.destroy_all

puts "Creating users"
users = []
50.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "12345678",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    avatar: Faker::Avatar.image
    # avatar: Faker::LoremFlickr.image(size: "300x300", search_terms: ['people', 'avatar']),
  )
  users << user
end
puts 'Creating trips'



100.times do
  cnt = countries.sample
  lct = locations.sample
  act = activities.sample
  Trip.create!(
    trip_name: act,
    max_people: Faker::Number.between(from: 1, to: 30),
    description: Faker::Quote.matz,
    pets: Faker::Number.between(from: 0, to: 1),
    user_id: users.sample.id,
    activities: activities.sample(2),
    country: cnt,
    location: lct,
    trip_img: Faker::LoremFlickr.image(size: "475x475", search_terms: [cnt.split[0..2].join('')])
  )
end
puts 'writing questions...'
quest1 = Question.create!(
  content: 'Where do you want to go?'
)
quest2 = Question.create!(
  content: 'How many people do you want to travel with?'
)
quest3 = Question.create!(
  content: 'Do you mind having pets on this trip?'
)
quest4 = Question.create!(
  content: 'What kind of vacation would you enjoy most?'
)
quest5 = Question.create!(
  content: 'What kind of activities would you like to join?'
)
puts 'generating answers...'
countries.each do |country|
  Answer.create!(
    question_id: quest1.id,
    content: country
  )
end

groups.each do |group|
  Answer.create!(
    question_id: quest2.id,
    content: group
  )
end

pets.each do |pet|
  Answer.create!(
    question_id: quest3.id,
    content: pet
  )
end

locations.each do |location|
  Answer.create!(
    question_id: quest4.id,
    content: location
  )
end
activities.each do |activity|
  Answer.create!(
    question_id: quest5.id,
    content: activity
  )
end
# puts "Cleaning messages..."
# Message.destroy_all
# puts "Creating messages"

# 50.times do
#   Message.create!(
#     trip_id: between(from: 1, to: 10),
#     user_id: 1,
#     comment: Faker::Quote.famous_last_words
#   )
# end
