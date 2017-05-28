class Contact < ApplicationRecord
  belongs_to :kind, optional: true

  def birthdate_br
    I18n.l(self.birthdate) unless birthdate.blank?
  end

  # def author
  #   "Márcio Rodriguez"
  # end
  #
  # def kind_description
  #   self.kind.description
  # end
  #
  # def as_json(options={})
  #   super(
  #     root: true,
  #     methods: [:kind_description, :author],
  #     include: {kind: {only: :description}}
  #     )
  # end
end
