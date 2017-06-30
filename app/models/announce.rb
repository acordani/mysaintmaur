class Announce < ApplicationRecord
	has_attachments :photos, maximum: 10
	belongs_to :properties
end
