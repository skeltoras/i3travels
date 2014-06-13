class Customer < ActiveRecord::Base
  belongs_to :user
  has_many :rentings, dependent: :destroy
  has_many :travels, dependent: :destroy
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :customer_name, presence: true, length: { maximum: 50 }
  validates :customer_street, presence: true, length: { maximum: 50 }
  validates :customer_plz, presence: true, length: { maximum: 50 }
  validates :customer_city, presence: true, length: { maximum: 50 }
  validates :customer_country, presence: true, length: { maximum: 50 }
  validates :customer_telephone, presence: true, length: { maximum: 50 }
  validates :customer_email, format: { with: VALID_EMAIL_REGEX },
                             uniqueness: { case_sensitive: false },
                             :allow_blank => true
end
