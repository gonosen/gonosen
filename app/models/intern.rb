class Intern < ActiveRecord::Base

attachment :company_image, type: :image

acts_as_taggable_on :labels

acts_as_taggable

end
