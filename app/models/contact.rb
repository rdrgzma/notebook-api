class Contact < ApplicationRecord
  #Associaçoes
  belongs_to :kind, optional: true
  has_many :phones
  has_one :address
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only: true

  # def as_json(options={})
  #   h = super(options)
  #   h[:birthdate] = (I18n.l(self.birthdate) unless birthdate.blank?)
  #   h
  # end

  # def birthdate_br
  #   I18n.l(self.birthdate) unless birthdate.blank?
  # end
  #
  # def author
  #   "Márcio Rodriguez"
  # end
  #
  # def kind_description
  #   self.kind.description
  # end
  #

end
