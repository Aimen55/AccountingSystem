class Account < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :account_type, optional: true
	has_one :general_ledger
end
