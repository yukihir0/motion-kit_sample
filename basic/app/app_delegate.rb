class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = MainViewController.alloc.initWithNibName(nil, bundle: nil)
    @window.makeKeyAndVisible

    true
  end
end
