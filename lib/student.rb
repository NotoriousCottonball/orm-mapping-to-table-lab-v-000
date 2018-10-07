class Student
  attr_accessor :name, :grade
  attr_reader :id 
  
  def self.execute(sql) 
    DB[:conn].execute(sql)
  end
    
  
  def initialize(name, grade)
    @name = name 
    @grade = grade 
  end 
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
    SQL
    self.execute(sql)
  end
  
  def self.drop_table
    sql = <<-SQL
    DROP TABLE IF EXISTS students
    SQL
    DB[:conn].execute(sql)
  end
  

  
end
