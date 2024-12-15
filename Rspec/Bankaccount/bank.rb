class InsufficientBalance < StandardError
  def initialize(message)
    super(message)
  end
end

class BankAccount
  private
  attr_accessor :balance

  public
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
    else
      raise ArgumentError, 'Deposit amount must be positive'
    end
  end

  def withdraw(amount)
    if amount <= 0
      raise ArgumentError, 'Withdraw amount must be positive'
    elsif amount > @balance
      raise InsufficientBalance, "Insufficient balance"
    else
      @balance -= amount
    end
  end

  def check_balance
    @balance
  end
end

