class Account < ApplicationRecord
  has_many :transactions
  validates :name, :balance, presence: true

  def update_balance(transaction)
    if transaction.type == "deposit"
      self.balance = self.balance + transaction.amount
      self.save
    elsif
      transaction.type == "withdraw"
      if self.balance >= transaction.amount
      self.balance = self.balance - transaction.amount
      self.save
  end

























end
