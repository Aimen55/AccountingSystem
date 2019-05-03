class Fund < ApplicationRecord
	belongs_to :user
	has_one :ledger
end
