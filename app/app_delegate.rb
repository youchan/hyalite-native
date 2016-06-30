class AppView
  include Hyalite::Component

  def initial_state
    { width: 100 }
  end

  def render
    Hyalite.create_element('UIView', style: { rect: [100, 100, 100, 100], backgroundColor: :blueColor })
  end
end

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'hyalite-native'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    #@blue_view = UIView.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
    #@blue_view = UIView.alloc.init
    #@blue_view.backgroundColor = UIColor.blueColor
    #rootViewController.view.addSubview(@blue_view)

    Hyalite.render(Hyalite.create_element(AppView), rootViewController.view)

    true
  end
end
