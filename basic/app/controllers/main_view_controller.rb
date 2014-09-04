class MainViewController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self
  end

  def loadView
    @layout   = MainLayout.new
    self.view = @layout.view
  end

  def viewDidLoad
    super
  end

  def dealloc
    super
  end
end
