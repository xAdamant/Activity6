class Trainer < ApplicationRecord
    validates :Name, :Address, :Current_weight, :Height, :Gender, :Email, presence: true
    validates :Current_weight, :Height, numericality:true
end
