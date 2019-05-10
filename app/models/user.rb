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
	has_many :accounts, dependent: :destroy
  has_many :ledgers, dependent: :destroy

	has_one :fund, dependent: :destroy
	has_one :ledger ,through: :fund, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy

end
