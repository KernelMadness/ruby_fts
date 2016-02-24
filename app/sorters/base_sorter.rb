class BaseSorter
  def self.sort(query)
    query.select("count(stems.id) as rank").order('rank DESC')
  end
end
