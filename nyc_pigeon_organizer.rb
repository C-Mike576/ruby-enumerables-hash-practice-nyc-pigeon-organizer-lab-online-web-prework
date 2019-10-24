require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!
cage = find_color(data)
binding.pry
find_gender(data)
find_lives(data)
cage.merge(cage_one)
binding.pry
end


def find_color(data)
  data[:color].each_with_object(Hash.new {|h,k| h[k] = {color:[]}}) do |(color,birds),cage| 
    birds.each do |bird| 
      cage[bird][:color] << color.to_s 
    end
  end
end
      
def find_gender(data)      
 data[:gender].each_with_object(Hash.new {|h,k| h[k] = {gender:[]}}) do |(gender,birds),cage| 
   birds.each do |bird| 
    cage[bird][:gender] << gender.to_s 
   end
  end
end
def find_lives(data)            
  data[:lives].each_with_object(Hash.new {|h,k| h[k] = {lives:[]}}) do |(lives,birds),cage| 
    birds.each do |bird| 
      cage[bird][:lives] << lives.to_s
    end
  end
end


=begin
  new_sort_1 = {}
  #binding.pry
  data.each_value do |n|
   # binding.pry
    n.each_value do |k|
     # binding.pry
      k.map {|b| new_sort_1[b]=data unless new_sort_1.has_key?(b)}
      
    end
  end
  new_sort_1
  new_sort_2 = Marshal.load(Marshal.dump(new_sort_1))
    new_sort_1.each do |ka,va|
      va.each do |kb,vb|
        vb.each do |kc,vc|
          #binding.pry
          if vc.include?("#{ka}") && new_sort_2[ka][kb].is_a?(Array)
            new_sort_2["#{ka}"][kb] << "#{kc}"
          elsif vc.include?("#{ka}")
            new_sort_2["#{ka}"][kb] = Array.new
            new_sort_2["#{ka}"][kb] << "#{kc}"
          else
           binding.pry
          end
        end 
      end
    end
    binding.pry
    new_sort_2
  end
=end