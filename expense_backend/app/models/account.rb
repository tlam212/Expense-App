class Account < ApplicationRecord
  has_many :transactions
  validates :amount, presence :true
  validates_inclusion_of :type, :in => ["deposit", "withdraw"]
end
