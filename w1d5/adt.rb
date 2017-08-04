class Stack
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar << el
    nil
  end

  def remove
    @ivar.pop
    nil
  end

  def show
    @ivar
  end

end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
    true
  end

  def dequeue
    @queue.pop
    nil
  end

  def show
    @queue
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, val)
    @map << [key, val]
    nil
  end

  def lookup(key)
    pair = @map.select { |pair| pair[0] == key }
    pair.flatten
  end

  def remove(key)
    @map.delete(lookup(key))
    nil
  end

  def show
    @map
  end

end
