//
//  AZShare.h
//  ipaimai
//
//  Created by arbullzhang on 11/3/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AZShare : NSObject

- (instancetype)initWithViewController:(UIViewController *)viewController;

- (void)show:(NSString *)text withImageToShare:(UIImage *)imageToShare withURLToShare:(NSURL *)urlToShare;

@end
