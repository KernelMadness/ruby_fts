class Stem < ActiveRecord::Base
  belongs_to :entity, polymorphic: true
end
