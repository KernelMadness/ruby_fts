module Fts
  extend ActiveSupport::Concern

  included do
    has_many :stems, as: :entity, dependent: :delete_all
    class_attribute :fields, :stemmer, :splitter, :sorter, :autoindex

    after_save :reindex, :if => :autoindex?
  end

  def reindex
    transaction do
      stems.delete_all
      fields.each do |field|
        splitter.split(send(field)).each do |word|
          stems.create!(field: field, original: word, stem: stemmer.stem(word))
        end
      end
    end
  end

  class_methods do
    def use_fts(fields, options = {})
      self.fields = fields
      self.set_options(options)
    end

    def search(q)
      stems = get_stems(q)
      self.joins(:stems).where("stems.stem" => stems).uniq
    end

    def get_stems(text)
      words = self.splitter.split(text)
      words.map { |t| self.stemmer.stem(t) }.uniq
    end

    def set_options(options)
      self.stemmer = options[:stemmer] || ::BaseStemmer
      self.splitter = options[:splitter] || ::BaseSplitter
      self.sorter = options[:sorter] || ::BaseSorter
      self.autoindex = options[:autoindex]
    end
  end
end
