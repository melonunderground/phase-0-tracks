require 'sqlite3'


db = SQLite3::Database.new("running.db")
#db.results_as_hash = true


create_person_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS person(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

create_run_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS run(
    id INTEGER PRIMARY KEY,
    location VARCHAR(255),
    date_of VARCHAR(255),
    running_time VARCHAR(255),
    distance INT,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES person(id)
  )
SQL

db.execute(create_person_cmd)
db.execute(create_run_cmd)

def add_person(db, first_name, last_name)
  person = db.execute("INSERT INTO person (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end

def add_run(db, location, date_of, running_time, distance, person_id)
  run = db.execute("INSERT INTO run (location, date_of, running_time, distance, person_id) VALUES (?, ?, ?, ?, ?)",[location, date_of, running_time, distance, person_id])
end

def delete_person (db, last_name)
  db.execute("DELETE FROM person WHERE last_name='#{last_name}'")
end

def delete_run(db, date_of)
  db.execute("DELETE FROM run WHERE date_of='#{date_of}'")
end

def display_all(db)
  p db.execute("SELECT person.first_name, person.last_name, run.location, run.date_of, run.running_time, run.distance FROM person JOIN run ON person.id = person_id")
end

#Test Code
#add_person(db,"Bob", "Runnington")
#add_run(db,"elkhorn","8 15 17", "40 minutes", 4.5, 1)
#delete_person(db, "Runnington")

#UI

puts "--------------------------------"
puts "Welcome to the Running Journal"
puts "--------------------------------"

valid_input = false
until valid_input

puts "What would you like to do today?"
puts "To add a person type 'add person'"
puts "To add a run type 'add run'"
puts "To delete a person type 'delete person'"
puts "To delete a run type 'delete run'"
puts "To display all people and runs type 'display all'"
puts "To exit type 'e'"

action = gets.chomp

case action
  when 'add person'
    puts "type the first name"
    first_name = gets.chomp
    puts "type the last name"
    last_name = gets.chomp
    add_person(db, first_name, last_name)
  when 'add run'
    puts "type the location"
    location = gets.chomp
    puts "type the date in d/m/yy format"
    date_of = gets.chomp
    puts "type how long in minutes your run lasted"
    running_time = gets.chomp
    puts "type how many miles you ran"
    distance = gets.chomp
    puts "type your runner id"
    person_id = gets.chomp
    add_run(db, location, date_of, running_time, distance, person_id)
  when 'delete person'
    puts "type the last name of the person you would like to delete"
    last_name = gets.chomp
    delete_person(db, last_name)
  when 'delete run'
    puts "type the date of the run you would like to delete"
    date_of = gets.chomp
    delete_run(db, date_of)
  when 'display all'
    puts "here are the current people and their runs"
    p display_all(db)
  when 'e'
    puts "good-bye, see you on the road"
    valid_input = true
  else
    puts "please enter another selection"
  end

end

