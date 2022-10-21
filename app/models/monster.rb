class Monster < ApplicationRecord
    has_many :tweets, dependent: :destroy
    validate :phone_number_valid_and_argentina

    def phone_number_valid_and_argentina
        if PhoneValidator.new(phone).valid?
            return
        else
            errors.add(:phone, :invalid)
        end
    end
end
