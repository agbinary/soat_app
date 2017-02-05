class User < ActiveRecord::Base
  scope :bring_if_exist, -> (identification_type, identification_number) { where(identification_type: User.identification_types[identification_type.to_sym]).
                                                                           where(identification_number: identification_number) }

  enum identification_type: {citizenship_id: 0, foreigner_id: 1, passport_id: 2}

  has_many :soats

  validates :identification_type, :identification_number, :name, :surname, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :identification_number, uniqueness: { scope: :identification_type }

  def full_name
    "#{name} #{surname}"
  end
end
