class MainLayout < MotionKit::Layout
  def layout
    backgroundColor UIColor.whiteColor

    add UIView, :left_top_view
    add UIView, :right_top_view
    add UIView, :left_bottom_view
    add UIView, :right_bottom_view
    add UIView, :center_center_view
  end

  def left_top_view_style
    backgroundColor UIColor.colorWithRed(1.0,
                                         green: 0.23137254901960785,
                                         blue: 0.18823529411764706,
                                         alpha: 1.0)
    constraints do
      width.equals(75)
      height.equals(75)
      left.equals(:superview).plus(50)
      top.equals(:superview).plus(50)
    end
  end

  def right_top_view_style
    backgroundColor UIColor.colorWithRed(1.0,
                                         green: 0.5843137254901961,
                                         blue: 0.0,
                                         alpha: 1.0)
    constraints do
      width.equals(75)
      height.equals(75)
      right.equals(:superview).minus(50)
      top.equals(:superview).plus(50)
    end
  end

  def left_bottom_view_style
    backgroundColor UIColor.colorWithRed(1.0,
                                         green: 0.8,
                                         blue: 0.0,
                                         alpha: 1.0)
    constraints do
      width.equals(75)
      height.equals(75)
      left.equals(:superview).plus(50)
      bottom.equals(:superview).minus(50)
    end
  end

  def right_bottom_view_style
    backgroundColor UIColor.colorWithRed(0.2980392156862745,
                                         green: 0.8509803921568627,
                                         blue: 0.39215686274509803,
                                         alpha: 1.0)
    constraints do
      width.equals(75)
      height.equals(75)
      right.equals(:superview).minus(50)
      bottom.equals(:superview).minus(50)
    end
  end

  def center_center_view_style
    backgroundColor UIColor.colorWithRed(0.20392156862745098,
                                         green: 0.6666666666666666,
                                         blue: 0.8627450980392157,
                                         alpha: 1.0)
    constraints do
      width.equals(75)
      height.equals(75)
      center.equals(:superview)
    end
  end
end
