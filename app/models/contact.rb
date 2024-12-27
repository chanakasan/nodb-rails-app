class Contact
  include ActiveModel::Model
  include ActiveModel::Attributes

  # Our model attributes to be used by the
  # (note: do not add an `id` since we have no persisted state
  attribute :name, :string
  attribute :email, :string
  attribute :subject, :string
  attribute :message, :string

  validates :name, :email, :subject, :message, presence: true

  # since we have no DB (id) we need to override the `persisted?` method - in this case it is always false!
  def persisted? = false
end
