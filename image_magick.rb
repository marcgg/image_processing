require "awesome_print"
require 'rubygems'
require 'rmagick'

width = 100
height = 100
data = Array.new(width) do
  Array.new(height) do
    [rand(255), rand(255), rand(255)]
  end
end


img = Magick::Image.new(width, height)

data.each_with_index do |row, row_index|
  row.each_with_index do |item, column_index|
    img.pixel_color(row_index, column_index, "rgb(#{item.join(', ')})")
  end
end

img.write('output/demo.bmp')
