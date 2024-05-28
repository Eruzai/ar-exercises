require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, in: 40..200 }
  validates :store_id, presence: true

  # before_create :set_password
  # after_create :set_password # requires saving after!
  before_save :set_password # could overwrite a password given by user

  private

  def set_password
    self.password = SecureRandom.base64(6)
    # self.save # required with after_create
  end
end
