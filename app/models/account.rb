class Account < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :account_type


	has_one :ledger
	has_one_attached :picture
end
