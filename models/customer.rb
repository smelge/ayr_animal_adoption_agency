require_relative('../db/sql_runner.rb')

class Customer
  attr_reader :id,:first_name,:last_name

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  # def delete()
  #
  # end
  #
  # def save()
  #
  # end
end
