class Account < ApplicationRecord
	after_commit :add_default_picture, on: [:create, :update]

	belongs_to :user, optional: true
	belongs_to :account_type


	has_one :ledger
	has_one_attached :picture


	private def add_default_picture
  unless picture.attached?
    self.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "default.jpeg")), filename: 'default.jpg' , content_type: "image/jpg")
  end
end
end
