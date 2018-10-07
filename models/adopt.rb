require_relative('../db/sql_runner.rb')

class Adopt
  attr_reader :id,:animal_id,:customer_id,:adopt_date

  def initialize(options)
    @id = options['id'].to_i
    @animal_id = options['animal_id'].to_i
    @customer_id = options['customer_id'].to_i
    @adopt_date = options['adopt_date']
  end

  def self.delete_all()
    sql = "DELETE FROM adoptions"
    SqlRunner.run(sql)
  end

  # def delete()
  #
  # end

  # def save()
  #
  # end
end
