# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"

# create a user data
User.create(
    username: "user",
    password: "password",
    email: "user@mail.com",
    gender: "Female",
    age: 18
  )

  Project.create(
    name: "Project 1",
    user_id: 1
  )

  Project.create(
    name: "Project 2",
    user_id: 1

  )

  Project.create(
    name: "Project 3",
    user_id: 1
  )

  Task.create(
    title:"Task 1",
    completed: true, 
    project_id: 1
  )

  Task.create(
    title:"Task 2",
    completed: false, 
    project_id: 1
  )

  Task.create(
    title:"Task 3",
    completed: true, 
    project_id: 1
  )

  Task.create(
    title:"Task 4",
    completed: false, 
    project_id: 1
  )

puts "done seeding"