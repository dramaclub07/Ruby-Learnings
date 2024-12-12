class InsufficientBalance < StandardError
    def initialize(message)
        super(message)
    end
end

    class BankAccount
    private
    attr_accessor :balance
#yo
    public
    def initialize(balance = 0)
        @balance = balance
    end

    def deposit(amount)
        if (amount > 0)
            @balance+= amount
        else
            puts "Deposity amount should be positive"
        end
    end

    def withdraw(amount)
    begin
        if amount <= 0
            puts "Withdrawal amount must be greater than 0"
        elsif amount > @balance
            raise InsufficientBalance.new("Insufficient balance: Withdrawal amount exceeds balance. TRY AGAIN WITH A LOWER WITHDRAWAL AMOUNT")
        else
            @balance -= amount
            puts "WITHDRAWAL OF #{amount} SUCCESSFUL"
        end
    rescue InsufficientBalance => e
        puts e.message
    end
end


    def display_balance
        puts "Current Balance:-> #{@balance}"
    end


    def balance_alert(balance)
        if balance < 50
        puts "CRITICALLY LOW BALANCE, #{balance}"
    end
end
end

account = BankAccount.new(1000)
account.deposit(500)
account.display_balance
account.withdraw(200)
account.display_balance
account.withdraw(2000)
account.withdraw(-100)




    

