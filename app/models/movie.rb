class Movie < ActiveRecord::Base
  
  
  def self.all_ratings
    a = Array.new
    self.select('rating').uniq.each {|x| a.push(x.rating)}
    a.sort_by{|rating| rating.to_s}.uniq
  end

  
end
