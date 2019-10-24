require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!
cage = Hash.new do |h, k|
  h[k] = Hash.new do |ih, ik|
    ih[ik] = []
  end
end

data.each do |atrabu, set|
  set.each do |value, names|
    names.each do |name|
      cage[name][atrabu] << value.to_s
    end
  end
end
cage
end