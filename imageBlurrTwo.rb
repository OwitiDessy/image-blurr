class Image 
  attr_accessor :array 

  def initialize(array) 
    @array = array 
  end  

  def output_image
      @array.each do |block| #iterating through each row aka block(i)
        block.each do |column| #iterating through each column (j)
      end    
        #(See pg 161 "uppercase letters" to make changes to item.)
        # We will do something to the item in a row and column (i,j) then assign a variable name to the item(i,j)change
        #e.g. the first item in the 1st row (i) and 1st column  aka index [0][0] is 0
        #e.g. the 2nd item in the 
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
