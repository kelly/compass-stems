module CompassStems
  class Stems
    module Sass::Script::Functions
      def stem(color, width = 22, direction = top, border_color = color, border_inset_color, enable_gradient_background)     
        color = get_color(color)
        border_color = get_color(border_color) 
        
        width = width.to_i if width.is_a? Sass::Script::Number
        height = (width / 2).to_i
        
        outer_stem = ChunkyPNG::Image.new(width, height-1, TRANSPARENT) 
        outer_stem.polygon([(width/2)-1,-1,(width/2),-1,0,height-1,width,height-1], border_color, color)
        
        png = ChunkyPNG::Image.new(width, height, TRANSPARENT)
        png = png.compose(outer_stem, 0, 0)
        
        unless border_inset_color.is_a? Sass::Script::Bool
          border_inset_color = get_color(border_inset_color)
          
          inner_stem = ChunkyPNG::Image.new(width, height-1, TRANSPARENT) 
          inner_stem.polygon([(width/2)-1,-1,(width/2),-1,0,height-1,width,height-1], border_inset_color, color)
          inner_stem = inner_stem.crop(0, 0, width, height-1)
          
          png = png.compose(inner_stem, 0, 1) 
        end
           
        case direction.to_s
        when "left"
          png = png.rotate_left
        when "right"
          png = png.rotate_right
        when "bottom"
          png = png.flip_horizontally
        end
  
        return_image(png)
        
      end
    end
  end
end