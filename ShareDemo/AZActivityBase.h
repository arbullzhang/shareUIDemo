//
//  AZActivityBase.h
//  ShareDemo
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AZActivityBase : UIActivity

@property (nonatomic, strong) UIImage  *imageToShare;
@property (nonatomic, strong) NSString *textToShare;
@property (nonatomic, strong) NSURL    *urlToShare;

@end
