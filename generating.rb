require "awesome_print"
require 'rubygems'
require 'gd2'

width = 100
height = 100
data = Array.new(width) do
  Array.new(height) do
    rand(16777216)
  end
end

image = GD2::Image::TrueColor.new(width, height)
data.each_with_index do |row, row_index|
  row.each_with_index do |item, column_index|
    image.set_pixel(row_index, column_index, item)
  end
end

File.open('output/gd2demo.png', 'wb') do |file|
  file << image.png
end
