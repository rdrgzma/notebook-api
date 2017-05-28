class Contact < ApplicationRecord
  def author
    "Márcio Rodriguez"
  end
  def as_json(options={})
    super(methods: :author, root: true)
  end
end
