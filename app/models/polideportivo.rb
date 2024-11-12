class Polideportivo < ApplicationRecord

    has_one_attached :imagen
    has_many :canchas, dependent: :destroy
end
