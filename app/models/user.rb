class User < ActiveRecord::Base
  enum identification_type: [:citizenship_id, :foreigner_id, :passport_id]

  validates :identification_type, :identification_number, :name, :surname, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
