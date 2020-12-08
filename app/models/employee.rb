class Employee < ApplicationRecord
	validates_presence_of :email
    validates_uniqueness_of :email, :case_sensitive => false, unless: -> {email.blank?}
    # validates_format_of :phone
    validates_format_of :date_of_birth, with: /\d{4}\/\d{2}\/\d{2}/
    validate :is_valid_dob?, unless: -> {date_of_birth.blank?}
    validates_presence_of :thumbnail_image_url, :big_image_url, :caption
    validates_format_of :thumbnail_image_url, :big_image_url, :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
end


  # def is_valid_dob?
  #     birthday = self.date_of_birth
  #     begin
  #       birthday.to_date
  #     rescue
  #       errors.add(:date_of_birth, "#{I18n.t 'api_c.dob_invalid'}")
  #     else
  #       if birthday > Date.today
  #         errors.add(:date_of_birth, "api_c.dob_future")
  #       elsif birthday < Date.today - 100.years
  #         errors.add(:date_of_birth, "api_c.dob_exceed")
  #       end
  #     end
  #   end

  # self.inheritance_column = "not_sti"

  #   def search_
  #       pokemon = Pokemon.all 

  #       pokemon = pokemon.where(['name LIKE ?', name]) if name.present?
  #       pokemon = pokemon.where(['type LIKE ?', type]) if type.present?
  #       pokemon = pokemon.where(['region LIKE ?', region]) if region.present?

  #       return pokemon
  #   end 