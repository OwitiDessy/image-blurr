class Image
  attr_accessor :array

  def initialize(array)
    @array = array
  end  

  def output_image
    @array= Image.new(4) {Image.new(4)} 
      @array.each do |block|
        block.each do |item|
          puts item
        end
        puts block
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
