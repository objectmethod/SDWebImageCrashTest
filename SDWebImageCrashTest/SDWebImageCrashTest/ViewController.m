#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString = @"https://s-passets-cache-ak0.pinimg.com/images/about/logos/Pinterest_Favicon.png";
    NSURL *url = [NSURL URLWithString:urlString];
    [self.imageView sd_setImageWithURL:url];
}

@end
