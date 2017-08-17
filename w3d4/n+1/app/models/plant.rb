class Plant < ApplicationRecord
  belongs_to :gardener,
    class_name: 'Gardener',
    foreign_key: :gardener_id,
    primary_key: :id

  has_many :seeds,
    class_name: 'Seed',
    foreign_key: :plant_id,
    primary_key: :id
end

def better_seeds_query
    plants = self.plants.include(:seeds)
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds
  end
