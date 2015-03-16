#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BOOL shouldUseCategory = YES;
    
    if (shouldUseCategory) {
        [self useImageViewCategory];
    } else {
        [self useWebImageManager];
    }
}

- (void) useImageViewCategory {
    NSString *urlString = @"https://s-passets-cache-ak0.pinimg.com/images/about/logos/Pinterest_Favicon.png";
    NSURL *url = [NSURL URLWithString:urlString];
    [self.imageView sd_setImageWithURL:url];
}

- (void) useWebImageManager {
    NSString *urlString = @"https://s-passets-cache-ak0.pinimg.com/images/about/logos/Pinterest_Favicon.png";
    NSURL *url = [NSURL URLWithString:urlString];
    SDWebImageManager *webImageManager = [SDWebImageManager sharedManager];
    [webImageManager downloadImageWithURL:url options:0 progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        
    }];
}

@end
