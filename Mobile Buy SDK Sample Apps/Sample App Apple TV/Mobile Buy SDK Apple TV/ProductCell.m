//
//  ProductCell.m
//  Mobile Buy SDK Apple TV
//
//  Created by David Muzi on 2015-10-15.
//  Copyright © 2015 Shopify. All rights reserved.
//

#import "ProductCell.h"
@import Buy;

@interface ProductCell ()
@property (nonatomic, weak) IBOutlet BUYImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@end

@implementation ProductCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.imageView.adjustsImageWhenAncestorFocused = YES;
    self.titleLabel.alpha = self.isFocused ? 1.0 : 0.0;
}

- (void)updateWithProduct:(BUYProduct *)product
{
    BUYImage *image = product.images.firstObject;
    
    NSURL *url = [NSURL URLWithString:image.src];
    
    [self.imageView loadImageWithURL:url animateChange:YES completion:nil];
    self.titleLabel.text = product.title;
}

- (void)didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator
{
    [coordinator addCoordinatedAnimations:^{
        
        self.titleLabel.alpha = self.isFocused ? 1.0 : 0.0;
        
    } completion:nil];
}

@end
