class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :plan
  has_one :profile
  has_many :match_type
  has_many :ranking_type
  has_many :matchs

  after_initialize :set_defaults

  validates_presence_of :first_name, :last_name
  validates :username, uniqueness: true, presence: true, format: { with: /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/ }


  attr_accessor :stripe_card_token 
  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end

  def full_name
    self.first_name + " " + self.last_name
  end
  
  private

    def set_defaults
#      self.role ||= 'player'
    end


end
