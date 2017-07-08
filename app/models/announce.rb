class Announce < ApplicationRecord
	has_attachments :photos, maximum: 10
	belongs_to :properties

	CLASS_ENERGY = %w(A B C D E F G Vierge)

	validates :class_energy, presence: true, inclusion: { in: CLASS_ENERGY }

	def class_energy_image
    	letter = self.class_energy
    	return "note-class_energy-#{letter.downcase}.png"
  	end
end
