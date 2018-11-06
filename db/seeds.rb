# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 file_inst = File.read(Rails.root + 'db/instructor.json')
 file_course = File.read(Rails.root + 'db/course.json')
 file_subj = File.read(Rails.root + 'db/subject.json')
 
 data_hash_inst = JSON.parse(file_inst)
 data_hash_course = JSON.parse(file_course)
 data_hash_subj = JSON.parse(file_subj)
 
 
 data_hash_inst.each do |h|
   name = h["last"] + ", " + h["first"]
   email = h["email"]
   instructor_id = h["id"]
   Instructor.create(name: name,email: email ,instructor_id: instructor_id)
 end
 
 data_hash_course.each do |h|
   code = h["code"]
   Course.create(code: code)
 end 
 
 data_hash_subj.each do |h|
  #puts h
  subject_id = h["id"]
  Subject.create(subject_id: subject_id)
 end 
 