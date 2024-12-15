require 'rspec'
require_relative 'bank_account'

RSpec.describe BankAccount do 
  let(:account) { BankAccount.new } 
  
  describe '#deposit' do 
    it 'increases the balance by the deposited amount' do 
      account.deposit(100) 
      expect(account.check_balance).to eq(100) 
    end 
    
    it 'raises an error if the deposited amount is negative' do 
      expect { account.deposit(-100) }.to raise_error('Invalid deposit amount') 
    end 
  end 
  
  describe '#withdraw' do 
    it 'decreases the balance by the withdrawn amount' do 
      account.deposit(100) 
      account.withdraw(50) 
      expect(account.check_balance).to eq(50) 
    end 
    
    it 'raises an error if the withdrawn amount is negative' do 
      expect { account.withdraw(-100) }.to raise_error('Invalid withdrawal amount') 
    end 
    
    it 'raises an error if the withdrawn amount exceeds the available balance' do 
      expect { account.withdraw(100) }.to raise_error('Insufficient funds') 
    end 
  end 
  
  describe '#check_balance' do 
    it 'returns the current balance' do 
      account.deposit(100) 
      expect(account.check_balance).to eq(100) 
    end 
  end 
end