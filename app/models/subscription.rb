class Subscription < ActiveRecord::Base
	validates :email, email: true, uniqueness: {
	case_sensitive: false }
end