class Image 
  attr_accessor :array 

  def initialize(array) 
    @array = array
    #@row_length = array.length
    #@col_length = array[row_index].length 
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

  def blur
    ones_coordinatees = find_ones

    @array.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        ones_coordinatees.each do |coord_row, coord_column| # coord_row is location aka index of one in our array, coord_column is location aka index of one in our array
          # now we can check the coord ([1,1]) to see if it matches the row_index AND (&&) column_index
          # if it does, then it is time to transform the zeroes above, below, left, right and turn them into 1s
          # if it doesn't, do nothing
          #Think @array[coord_row][coord_column ] below is same as saying @array[1][1] or @array[3][2]aka the locations of our ones in our array
          @array[coord_row][coord_column - 1] = 1 unless coord_column == 0 # Transforms zero located at row index[1] and column index[0] to 1
          @array[coord_row][coord_column + 1] = 1 unless coord_column == @array[row_index].length-1 # Transforms zero located at row index[1] and column index[2] to 1
          @array[coord_row - 1][coord_column] = 1 unless coord_row == 0 # Transforms zero located at row index[0] and column index[1] to 1
          @array[coord_row + 1][coord_column] = 1 unless coord_row == @array.length-1 # Transforms zero located at row index[2] and column index[2] to 1 
        end
      end
    end
  end  
end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])
  
image.output_image
puts "----------"
image.blur
image.output_image 
