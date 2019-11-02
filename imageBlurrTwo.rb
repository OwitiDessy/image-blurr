class Image 
  attr_accessor :array 

  def initialize(array) 
    @array = array 
  end  

  def output_image
      @array.each do |block| #iterating through each row aka block
        block.each do |column| #iterating through each column 
      end    
        #e.g. the first item in (in the Image.new array) the 1st row and 1st column aka index [0][0] is 0
        #e.g. the 4th item (in the Image.new array) in the 3rd row and 4th column aka index [2][3] is 1
          puts block.join 
      end       
  end 

  def changeValue block, column
    @array[block][column] = 1
    puts output_image.join
    
  end 

end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])  
  
image.output_image 
image.changeValue 0, 1
image.changeValue 1, 0
image.changeValue 1, 2
image.changeValue 2, 1
image.changeValue 1, 3
image.changeValue 2, 2
image.changeValue 3, 3
