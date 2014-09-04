class MainTableLayout < MotionKit::Layout
  def layout
    add UITableView, :table_view
  end

  def table_view_style
    separatorStyle UITableViewCellSeparatorStyleNone
    background_color UIColor.grayColor

    constraints do
      top.equals(:superview)
      left.equals(:superview)
      right.equals(:superview)
      bottom.equals(:superview)
    end

    registerClass(MainCell, forCellReuseIdentifier: MainCell::ID)
  end
end
