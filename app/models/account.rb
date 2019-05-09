class Account < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :account_type
	has_one :ledger
end
