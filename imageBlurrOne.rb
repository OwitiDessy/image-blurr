class Image #concept of an image
  attr_accessor :array #allow users to get (reader) or change (writer) content of my object aka new image

  def initialize(array) #Initialize specifies attributes of object (aka user must provide when creating new image)
    
    @array = array #@array allows the variable "array" (aka the argument) to live outside the initialize method
  end  

  def output_image
    # @array=Image.new(4){Image.new(4)} #only use this when you don`t have an instance aka a specific example aka specific object
      @array.each do |block| #iterating through each block aka row
        #block.each do |item| # only use when iterating through each item within a block
          #puts item #only use when you want to print each item within a block
        #end #Don't forget to unclude this end when iterating through each item within each block
        puts block.join #prints items in all blocks and joins items within a block (aka within each array) together
      end       
  end  

end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])  
# the object aka specific example is our new image (aka Image.new ([array blocks])) stored in variable name "image"  

image.output_image #calls method "output_image" that has the code for printing out items in the array blocks
