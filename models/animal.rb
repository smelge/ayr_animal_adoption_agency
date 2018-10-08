require_relative('../db/sql_runner.rb')

class Animal
  attr_reader :id,:name,:species,:age,:arrival_date,:photo

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @species = options['species']
    @age = options['age']
    @arrival_date = options['arrival_date']
    @photo = options['photo']
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
      (name,species,age,arrival_date,photo)
      VALUES
      ($1,$2,$3,$4,$5)
      RETURNING id
    ";
    values = [@name,@species,@age,@arrival_date,@photo]
    results = SqlRunner.run(sql,values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM animals"
    results = SqlRunner.run(sql)
    return results.map{|result| Animal.new(result)}
  end

  # def update()
  #
  # end
end
