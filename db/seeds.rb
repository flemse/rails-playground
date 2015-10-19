# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |t1|
  p = Program.create! name: "Program #{t1}"
  10.times do |t2|
    p1 = p.children.create! type: 'ProgramRevision', name: "Revision #{t2}"
    10.times do |t3|
      p2 = p1.children.create! type: 'Lecture', name: "Lecture #{t3}"
    end
  end
end
