require_relative('../db/sql_runner.rb')
also_reload( '*' )

class Customer
  attr_reader :id
  attr_accessor :first_name,:last_name

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM customers WHERE id = $1"
    SqlRunner.run(sql,[@id])
  end

  def save()
    sql = "
      INSERT INTO customers
      (first_name,last_name)
      VALUES
      ($1,$2)
      RETURNING id
    "
    values = [@first_name,@last_name]
    results = SqlRunner.run(sql,values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE customers
    SET
    (first_name,last_name) = ($1, $2)
    WHERE id = $3"
    values = [@first_name, @last_name, @id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM customers"
    result = SqlRunner.run(sql)
    return result.map{|person| Customer.new(person)}
  end

  def self.find(id)
    sql = "SELECT * FROM customers WHERE id = $1"
    result = SqlRunner.run(sql,[id])
    return Customer.new(result.first)
  end

  def self.fullname()
    return "#{@first_name} #{@last_name}"
  end
end
