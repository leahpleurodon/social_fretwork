# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MusoEmbed.destroy_all
Muso.destroy_all
Job.destroy_all
Host.destroy_all
require_relative "seeds/muso"
require_relative "seeds/host"
require_relative "seeds/job"
require_relative "seeds/embed"
