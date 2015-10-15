//
//  ViewController.m
//  Mobile Buy SDK Apple TV
//
//  Created by David Muzi on 2015-10-15.
//  Copyright © 2015 Shopify. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"

@import Buy;

@interface ViewController ()
@property (nonatomic, strong) NSArray <BUYProduct *> *products;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BUYClient *client = [[BUYClient alloc] initWithShopDomain:@""
                                                       apiKey:@""
                                                    channelId:@""];
    
    [client getProductsPage:0 completion:^(NSArray *products, NSUInteger page, BOOL reachedEnd, NSError *error) {

        self.products = products;
        [self.collectionView reloadData];
        
    }];
}

#pragma mark - CollectionView DataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    BUYProduct *product = self.products[indexPath.row];
    
    [cell updateWithProduct:product];
    
    return cell;
}

@end
