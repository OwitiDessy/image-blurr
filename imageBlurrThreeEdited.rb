class Image 
  attr_accessor :array 

  def initialize(array) 
    @array = array
  end  

  def output_image
    @array.each do |row|
      puts row.join  
    end    
  end 

  def find_ones
    ones = []

    @array.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        if column == 1 
          ones << [row_index, column_index]
        end  
      end
    end  

    return ones
  end

  def blur(distance)
    ones_coordinatees = find_ones #-> [[1,1]]

    # when the blur method takes a distance argument (to solve the 'manhattan distance' part of the challenge)
    # research the Ruby 'times' method, and think about how to use that around the code below

    @array.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        ones_coordinatees.each do |coord_row, coord_column|
    
          @array[coord_row][coord_column - 1] = 1 unless coord_column == 0 # Transforms zero located at row index[1] and column index[0] to 1
          @array[coord_row][coord_column + 1] = 1 unless coord_column == @array[row_index].length-1 # Transforms zero located at row index[1] and column index[2] to 1
          @array[coord_row - 1][coord_column] = 1 unless coord_row == 0 # Transforms zero located at row index[0] and column index[1] to 1
          @array[coord_row + 1][coord_column] = 1 unless coord_row == @array.length-1 # Transforms zero located at row index[2] and column index[2] to 1 
        end
      end
    end
    return Image.new(result_img)
  end  
end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 0],
[0, 0, 0, 0]
])
  
image.output_image
puts "----------"
image.blur(2)
image.output_image 
