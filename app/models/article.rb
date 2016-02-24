class Article < ActiveRecord::Base
  include Fts

  validates_presence_of :title, :content

  use_fts [:title, :content], autoindex: true
end
