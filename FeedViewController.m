
#import "FeedViewController.h"
#import "FavouritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController


// custom initialiser for the view controller.  This must be done before the viewDidLoad.
- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"egg"];

    }
    return self;
}

- (void)initButtonView {
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    // create a button
    UIButton *favouriteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favouriteButton.frame = CGRectMake(60, 100, 200, 44);
    favouriteButton.backgroundColor = [UIColor yellowColor];
    [favouriteButton setTitle:@"View Favourites" forState:UIControlStateNormal];
    [self.view addSubview:favouriteButton];
    
    
    // adding constraints to the button to put it in the center of the window
    // ensure that the auto resizing mask is set to no
    [favouriteButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    // set the self.view (the actual window) as the first thing to constrain the button to
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:favouriteButton attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:favouriteButton attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    [favouriteButton addTarget:self action:@selector(showFavourites:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)initConstraints {

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButtonView];

    
    // when you press the favourites button it will fire the showFavourites method to push a new view controller

}

- (void)showFavourites:(UIButton *)sender {
    FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc]init];
    // once the button is pressed we want to push a new View Controller
    [self.navigationController pushViewController:favouritesViewController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
