require 'rspec'
require_relative 'bank'

RSpec.describe BankAccount do 
  let(:account) { BankAccount.new } 
  
  describe '#deposit' do 
    it 'increases the balance by the deposited amount' do 
      account.deposit(100) 
      expect(account.check_balance).to eq(100) 
    end 
    
    it 'raises an error if the deposited amount is negative' do 
      expect { account.deposit(-100) }.to raise_error('Deposit amount must be positive') 
    end 
  end 
  
  describe '#withdraw' do 
    it 'decreases the balance by the withdrawn amount' do 
      account.deposit(100) 
      account.withdraw(50) 
      expect(account.check_balance).to eq(50) 
    end 
    
    it 'raises an error if the withdrawn amount is negative' do 
      expect { account.withdraw(-100) }.to raise_error(ArgumentError, 'Withdraw amount must be positive') 
    end 
    
    it 'raises an error if the withdrawn amount exceeds the available balance' do 
      expect { account.withdraw(100) }.to raise_error(InsufficientBalance,'Insufficient balance') 
    end 
  end 
  
  describe '#check_balance' do 
    it 'returns the current balance' do 
      account.deposit(100) 
      expect(account.check_balance).to eq(100) 
    end 
  end 
end