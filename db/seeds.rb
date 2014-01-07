# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach("state_data.csv", headers: true) do |row|
	State.create(name: row.field('name'), abbreviation: row.field('abbreviation'), women_percent_income: row.field('women_percent_income'), percent_college_degree: row.field('percent_college_degree'), per_capita_income: row.field('per_capita_income'))
end