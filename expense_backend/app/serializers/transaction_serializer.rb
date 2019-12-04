class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :trans_type, :description, :amount, :date
end
