//
//  ProductCell.h
//  Mobile Buy SDK Apple TV
//
//  Created by David Muzi on 2015-10-15.
//  Copyright © 2015 Shopify. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BUYProduct;

@interface ProductCell : UICollectionViewCell

- (void)updateWithProduct:(BUYProduct *)product;

@end
