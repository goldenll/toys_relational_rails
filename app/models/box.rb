# class Box < ActiveRecord::Base
class Box < ApplicationRecord
  has_many :toys
end
