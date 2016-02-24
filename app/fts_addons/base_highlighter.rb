class BaseHighlighter
  def self.process(query)
    query.select("ARRAY_AGG(stems.original) as matches")
  end
end
