require "active_record"
ActiveRecord::Base::establish_connection(:adapter => "sqlite3",:database => "tasks.sqlite")
# Define database schema , and create database "reminders"
class ReminderTableScript < ActiveRecord::Migration
def self.up
create_table :tasks do |t|
t.string :task_name
t.string :due_date
t.string :task_status
end
end
def self.down
drop_table :reminders
end
end
# Create the table that will be used in the database
ReminderTableScript.up

class Task < ActiveRecord::Base
end

