require 'sqlite3'


db = SQLite3::Database.new("running.db")
#db.results_as_hash = true


create_runner_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS running(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    sex VARCHAR(255)
  )
SQL

db.execute(create_runner_cmd)

#db.execute("INSERT INTO running (name, age, sex) VALUES ('dave', 33, 'male')")

#def create_kitten(db, name, age)
#  db.execute("INSERT INTO running (name, age, sex) VALUES (?, ?, ?)", [name, age, sex])
#end
