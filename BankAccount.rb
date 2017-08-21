class BankAccount
@@interest_rate = 1.5
@@accounts = []

  def self.create
    new_bankaccount = BankAccount.new
    @@accounts << new_bankaccount
    return new_bankaccount
  end

  def self.total_funds
    sum = 0
    @@accounts.each {|value|
      sum += value.balance
    }
    return sum
  end

  def self.interest_time
    @@accounts.each { |value|
   value.balance = value.balance * @@interest_rate
    }
  end

  def initialize
  @balance = 0
  end

  def balance
    @balance
  end

  def balance=(account_balance)
    @balance = account_balance
  end

  def deposit(num)
  @balance += num
  end

  def withdraw(num)
    @balance -= num
  end

end
