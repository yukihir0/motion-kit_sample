class NavigationBarLayout < MotionKit::Layout
  def layout
    frame [[0, 0], [180, 30]]
    
    add UISegmentedControl.alloc.initWithItems(['hoge', 'fuga']), :segmented_control do
      constraints do
        center_x.equals(:superview)
        width.equals(:superview)
        height.equals(:superview)
      end
      
      segmented_control_style UISegmentedControlStyleBar
      selected_segment_index  0
      tint_color UIColor.darkGrayColor
    end
  end
end
