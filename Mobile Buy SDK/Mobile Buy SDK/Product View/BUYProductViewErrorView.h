//
//  BUYProductViewErrorView.h
//  Mobile Buy SDK
//
//  Created by Shopify.
//  Copyright (c) 2015 Shopify Inc. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

@import UIKit;
@class BUYTheme;

/**
 *  A customer toast error view to use in the BUYProductView.
 */
@interface BUYProductViewErrorView : UIView

/**
 *  The label containing the error message.
 */
@property (nonatomic, strong) UILabel *errorLabel;

/**
 *  The Auto Layout constraint for when the error message is hidden.
 */
@property (nonatomic, strong) NSLayoutConstraint *hiddenConstraint;

/**
 *  The Auto Layout constraint for when the error message is visible.
 */
@property (nonatomic, strong) NSLayoutConstraint *visibleConstraint;

/**
 *  Initializer that create an error view with a theme.
 *
 *  @param theme The theme for the error view.
 *
 *  @return An error view.
 */
- (instancetype)initWithTheme:(BUYTheme*)theme;

@end
