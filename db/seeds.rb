# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create( content: "This is my first post!")
Post.create( content: "This is my second post!")
Post.create( content: "This is my third post!")
Post.create( content: "This is my fourth post!")

Comment.create(content:"1st comment for first post",post:1)
Comment.create(content:"2nd comment for first post",post:1)
Comment.create(content:"3rd comment for first post",post:1)
Comment.create(content:"1st comment for second post",post:2)