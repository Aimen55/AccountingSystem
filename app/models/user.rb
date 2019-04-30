class User < ApplicationRecord
	attr_accessor :password
  
    # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :password, :confirmation => true #password_confirmation attr
    # validates_length_of :password, :in => 6..20, :on => :create
	has_many :accounts
	has_one :fund
	has_one :general_ledger ,through: :fund
end