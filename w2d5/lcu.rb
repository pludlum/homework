class LRUCache

  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.size
  end

  def add(el)
    if count > @size
      @cache.shift
      @cache << el
    elsif @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache << el
    end
  end

  def show
    puts @cache
    nil
  end

  private
  # helper methods go here!

end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

p johnny_cache.count

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


print johnny_cache.show
