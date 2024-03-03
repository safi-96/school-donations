# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models

  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable, :validatable
  
  belongs_to :school, optional: true
  has_many :donations, dependent: :nullify

  validates_presence_of :email, :name

  attr_accessor :skip_password_validation

  def password_required?
    return false if skip_password_validation
    super
  end
end
