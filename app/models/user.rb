class User < ActiveRecord::Base
  has_secure_password

  validates :email, :password, :password_confirmation, :name, :surname, :module, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A([0-9]+)@stud.prz.edu.pl\z/i, message: ': Podaj adres z domeną @stud.prz.edu.pl'
  validates :password, confirmation: true
  validates :email, length: { is: 22 }
  validates :password, length: { minimum: 6 }
end
