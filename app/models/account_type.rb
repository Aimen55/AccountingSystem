class AccountType < ApplicationRecord
	has_many :accounts
	accepts_nested_attributes_for :accounts
end
