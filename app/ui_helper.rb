module UIHelper
  class << self
    def create_ui(name)
      case name
        when 'uiview'
          view = UIView.alloc.init
          #view = UIView.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
          view.send(:define_singleton_method, '[]=') do |id, value|
            @attrs ||= {}
            @attrs[id] = value
          end

          view.send(:define_singleton_method, '[]') do |id|
            @attrs ||= {}
            @attrs[id]
          end
          view
      end
    end
  end
end
