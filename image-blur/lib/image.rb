class Image
  attr_accessor :data
  def initialize(image)
    @data = image
  end

  def output_image
    @data.each do |row|
      puts row.join
    end
  end


  # def blur

  #   new_image = Marshal.load(Marshal.dump(@data))

  #   @data.each_with_index do |rowArray, rowNum|
  #     rowArray.each_with_index do |pixel, columnNum|
  #       if pixel == 1
  #         for i in -1..1 do
  #           for j in -(1 - i.abs)..(1-i.abs) do 
  #             rowN = rowNum + i
  #             columnN = columnNum + j
  #             if rowN >= 0 and rowN < @data.length and columnN >= 0 and columnN < rowArray.length
  #               new_image[rowN][columnN] = 1
  #             end
  #           end
  #         end
  #       end
          
  #     end
  #   end
  #   @data = new_image

  # end

  def blur(mhtn = 1)

    new_image = Marshal.load(Marshal.dump(@data))

    @data.each_with_index do |rowArray, rowNum|
      rowArray.each_with_index do |pixel, columnNum|
        if pixel == 1
          ((-1 * mhtn)..mhtn).each do |i|
            for j in -(mhtn - i.abs )..(mhtn - i.abs ) do 
              rowN = rowNum + i
              columnN = columnNum + j
              if rowN >= 0 and rowN < @data.length and columnN >= 0 and columnN < rowArray.length
                new_image[rowN][columnN] = 1
              end
            end
          end
        end
          
      end
    end
    # @data = new_image
    return Image.new(new_image)
    
  end
end

image = Image.new([
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0],
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0]
])
image.output_image
image.blur()
puts "-------------------"
image.output_image