class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         before_create :set_default_avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
	#attr_accessor :password
  
    # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    #validates :password, :confirmation => true #password_confirmation attr
    #validates_length_of :password, :in => 6..20, :on => :create
	has_many :accounts
  has_many :ledgers

	has_one :fund
	has_one :ledger ,through: :fund
  has_one_attached :avatar

end
