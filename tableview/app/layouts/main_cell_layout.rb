class MainCellLayout < MotionKit::Layout
  def layout
    root :cell do
      add content_view, :content_view do
        add UIView, :base_view do
          add UILabel, :text_label
        end
      end
    end
  end

  def cell_style
    selection_style UITableViewCellSelectionStyleNone
  end

  def content_view_style
    background_color UIColor.grayColor
  end
 
  def base_view_style
    background_color UIColor.whiteColor
    
    constraints do
      left.equals(:superview).plus(10)
      right.equals(:superview).minus(10)
      top.equals(:superview).plus(10)
    end
  end
  
  def text_label_style
    numberOfLines 0
    
    constraints do
      left.equals(:superview).plus(10)
      right.equals(:superview).minus(10)
      top.equals(:superview).plus(10)
      bottom.equals(:superview).minus(10)
    end
  end
end
