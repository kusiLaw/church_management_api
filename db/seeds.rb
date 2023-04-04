# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# rails g model Member fname:string lname:string membership:string phone:string image:string phone:string
# rails g model Address country:string locality:string digital_code:string member:references
# rails g model Membership_info info_type:string message:text member:references

# rails g model Group name:string
# rails g model Group_member group_number:integer role:string member:references group:references
# rails g model Due amount:decimal date:date member:references group:references
# rails g model Tithe amount:decimal payment:string ref:string date:date member:references group:references


# rails g model User username:string email:string password:string role:string member:references
# rails g model Department name:string
# rails g model Departmental_head name:string department:references
# rails g model Leadership member:references departmental_head:references

m =  Member.new(lname: 'Lawrence',
      fname: 'Addai Kusi',
      membership: '',
      phone: '+233243000000',
      image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fprofile_3135715&psig=AOvVaw30pcvl9zyOMGtYqZqMQBQv&ust=1681210029676000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKCyyejHkv4CFQAAAAAdAAAAABAE'
     )
m.save