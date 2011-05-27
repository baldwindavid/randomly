module Randomly
  
  def self.generate(options = {})
    options = {
      :length => 8, 
      :chars => ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    }.merge!(options)
    
    Array.new(options[:length]) { options[:chars].to_a[rand(options[:chars].to_a.size)] }.join
  end
  
end