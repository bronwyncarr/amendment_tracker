# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manual.create({name: "OM-A"})
Manual.create({name: "OM-D"})
Manual.create({name: "OM-E"})


User.create({username: 'pilot', email: 'a@test.com', password: '123456', password_confirmation: '123456'})

Record.create(document_ref: '1a', text: "cut and pasted from doc", error: 'it is wrong', comment: 'it should include aeroplanes', revision: 'it should be this', approved: false, incorporated: false, user_id: 1, manual_id: 1)