# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :delete_all

  validates :title, presence: true
  validates :title, length: { minimum: 20, maximum: 255 }
end
