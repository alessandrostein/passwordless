# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # virtual attribute to skip password validation while saving
  attr_accessor :skip_password_validation

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  passwordless_with :email

  enum role: { donor: 0, admin: 1 }

  protected

  def password_required?
    return false if skip_password_validation

    super
  end
end
