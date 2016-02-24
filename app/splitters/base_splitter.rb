class BaseSplitter
  PATTERN = "[\s\n\t.,;:\\(\\)\\[\\]'\"\\?\\!<>]+" #using compiled string for possible performance reasons

  def self.split(input)
    input.split(Regexp.new(PATTERN))
  end
end
