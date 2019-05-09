class Ledger < ApplicationRecord
	
	belongs_to :fund
	belongs_to :account
	
end
