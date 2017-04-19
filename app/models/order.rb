class Order < ActiveRecord::Base
    belongs_to :client
    has_many :order_users
    has_many :users, through: :order_users
    
    validates :t_cost, presence: true
    validates :payment, presence: true
    validates :date, presence: true
    
end