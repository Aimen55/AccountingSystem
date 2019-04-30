class Fund < ApplicationRecord
	belongs_to :user
	has_one :general_ledger
end
