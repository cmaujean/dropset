class Dropset
  
  def self.calc(n)
    ( n.kind_of? Fixnum and n > 0 ) or raise ArgumentError
    n = n.to_f
    ((n * n / 2) + ( n / 2 )).to_i
  end

end