require_relative('../db/sql_runner.rb')
require('date')

class Adopt
  attr_reader :id,:animal_id,:customer_id,:adopt_date

  def initialize(options)
    @id = options['id'].to_i
    @animal_id = options['animal_id'].to_i
    @customer_id = options['customer_id'].to_i
    date = DateTime.now
    @adopt_date  = date.strftime("%Y-%m-%d")
  end

  def save()
    sql = "
      INSERT INTO adoptions
      (customer_id,animal_id,adopt_date)
      VALUES
      ($1,$2,$3)
    "
    values = [@customer_id,@animal_id,@adopt_date]
    SqlRunner.run(sql,values)
  end

  def self.delete_all()
    sql = "DELETE FROM adoptions"
    SqlRunner.run(sql)
  end

  # def delete()
  #
  # end
end
