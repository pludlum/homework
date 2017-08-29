class Cat < ApplicationRecord
  include Toyable
  # has_many :toys,
  #   primary_key: :id,
  #   foreign_key: :toyable_id,
  #   class_name: :Toy
end
