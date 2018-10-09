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

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    SqlRunner.run(sql,[@id])
  end

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

  def self.find(id)
    sql = "SELECT * FROM animals WHERE id = $1"
    result = SqlRunner.run(sql,[id])
    return Animal.new(result.first)
  end

  def update()
    sql = "UPDATE animals
    SET
    (name,species,age,photo) = ($1,$2,$3,$4)
    WHERE id = $5"
    values = [@name, @species,@age,@photo, @id]
    SqlRunner.run( sql, values )
  end
end
