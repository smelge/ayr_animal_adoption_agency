require_relative('../db/sql_runner.rb')

class Animal
  attr_reader :id,:name,:species,:age,:arrival_date

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @species = options['species']
    @age = options['age']
    @arrival_date = options['arrival_date']
  end

  def self.delete_all()
    sql = "DELETE FROM animals"
    SqlRunner.run(sql)
  end

  # def delete()
  #
  # end

  def save()
    sql = "
      INSERT INTO animals
      (name,species,age,arrival_date)
      VALUES
      ($1,$2,$3,$4)
      RETURNING id
    ";
    values = [@name,@species,@age,@arrival_date]
    results = SqlRunner.run(sql,values)
    @id = results.first()['id'].to_i
  end
end
