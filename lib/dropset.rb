class Dropset
  
  def self.calc(n)
    ( n.kind_of? Fixnum and n > 0 ) or raise ArgumentError
    (n * n / 2) + ( n / 2 ) + (n.odd? ? 1 : 0)
  end

end