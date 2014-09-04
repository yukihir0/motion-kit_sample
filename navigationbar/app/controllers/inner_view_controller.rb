class InnerViewController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self
  end

  def loadView
    @layout   = InnerLayout.new
    self.view = @layout.view
   
    @navigation_bar_layout        = NavigationBarLayout.new
    self.navigationItem.titleView = @navigation_bar_layout.view

    @segmented_control = @navigation_bar_layout.get(:segmented_control)
    @segmented_control.addTarget(self,
                                 action: 'on_change_segment_control:',
                                 forControlEvents: UIControlEventValueChanged
                                )
  end

  def viewDidLoad
    super
  end

  def dealloc
    super
  end

  def on_change_segment_control(control)
    case control.selectedSegmentIndex
    when 0
      self.view.backgroundColor = UIColor.grayColor
    when 1
      self.view.backgroundColor = UIColor.darkGrayColor
    end
  end
end
