# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rails g model Member fname:string lname:string membership:string phone:string image:string phone:string
rails g model Address country:string locality:string digital_code:string member:references
rails g model Bio message:text member:references
rails g model User email:string password:string role:string member:references
rails g model Department name:string
rails g model Departmental_head name:string department:references
rails g model Leadership member:references departmental_head:references
