module Sketchup
  class Color

    # Creates a new color object.
    # @overload initialize()
    #   Creates a color initialized with 0 (black, opaque).
    # @overload initialize(red, green, blue, alpha=255)
    #   Creates a color from color components.
    #   If a given component is an integer, it will be interpreted in a color range of [0..255], if it is a float, it
    #   will be interpreted in a color range of [0..1]
    #   @param [Numeric] red
    #   @param [Numeric] green
    #   @param [Numeric] blue
    #   @param [Numeric] alpha
    # @overload initialize(array)
    #   Creates a color from color components.
    #   If a given component is an integer, it will be interpreted in a color range of [0..255], if it is a float, it
    #   will be interpreted in a color range of [0..1]
    #   @param [Array<Numeric>] array
    # @overload initialize(string)
    #   Creates a color from a predefined name or a hexadecimal color code.
    #   @param [String] string  like "red" or "#ff0000"
    # @overload initialize(number)
    #   Creates a color from a predefined name or a hexadecimal color code.
    #   @param [Fixnum] number  like 255 or 0xff or 0x0000ff
    # @overload initialize(color)
    #   Creates a color that is a copy of the given color.
    #   This is equivalent to {clone}.
    #   @param [Sketchup::Color] color
    def initialize(*args)
    end

    # Retrieves the opacity value.
    # @return [Fixnum] the opacity in the range of [0..255] where 0 is fully transparent and 255 is opaque.
    def alpha
    end

    # Assigns the opacity value.
    # @param [Numeric] value  the new opacity. Either an integer in the range of [0..255], or a float in [0..1]
    def alpha=(value)
    end

    # Generate a new color by blending two given colors.
    # The blended color will be the result of taking (1 - weight) * color1 + weight * color2.
    # If weight = 0, you will get color2. If weight = 1 you will get color1.
    # @param [Sketchup::Color, String] color2  the second color to be blended (with this color).
    # @param [Float]                   weight  a Float between 0.0 and 1.0
    # @return [Sketchup::Color]                the newly blended Color object if successful
    def blend(color2, weight)
    end

    # Retrieves the blue color component.
    # @return [Fixnum] the blue color component in the range of [0..255]
    def blue
    end

    # Assigns the blue color component.
    # @param [Numeric] value  the new blue value. Either an integer in the range of [0..255], or a float in [0..1]
    def blue=(value)
    end

    # Retrieves the green color component.
    # @return [Fixnum] the green color component in the range of [0..255]
    def green
    end

    # Assigns the green color component.
    # @param [Numeric] value  the new green value. Either an integer in the range of [0..255], or a float in [0..1]
    def green=(value)
    end

    # Retrieves an array of all color names recognized by SketchUp.
    # In general, whenever a method wants a color, you can pass in a String with one of these names.
    # @return [Array<String>] an array of all SketchUp color names if successful
    def self.names
    end

    # Retrieves the red color component.
    # @return [Fixnum] the red color component in the range of [0..255]
    def red
    end

    # Assigns the red color component.
    # @param [Numeric] value  the new red value. Either an integer in the range of [0..255], or a float in [0..1]
    def red=(value)
    end


    # Convert a Color object to an Array object. The returned array will contain 4 integer values (RGBA) between 0 and 255.
    # @return [Array<Fixnum>] an Array object if successful
    def to_a
    end

    # Converts a Color object to an 32 bit integer.
    # @return [Fixnum] a 32 bit integer if successful
    def to_i
    end

    # Returns a string representation of a Color object, in the form of "Color(255, 255, 255, 255)".
    # @return [String] a string name for the color.
    def to_s
    end
  end
end
