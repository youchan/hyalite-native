module Hyalite
  module UIPropertyOperations
    class << self
      def create_markup_for_styles(view, prop_value)
        puts ">>>>>>>> create_markup_for_styles #{prop_value.inspect}"

        prop_value.each do |key, value|
          case key
          when :rect
            view.frame = CGRectMake(*value)
          when :backgroundColor
            view.backgroundColor = UIColor.send(value)
          end
        end
      end
    end
  end
end
