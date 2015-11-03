//
//  AZQQActivity.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZQQActivity.h"

static NSString * const AZQQActivityType = @"com.arbull.share.activity.qq";

@implementation AZQQActivity

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}

- (NSString *)activityTitle
{
    return @"QQ";
}

- (NSString *)activityType
{
    return AZQQActivityType;
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_qq"];
}

- (void)performActivity
{

}

@end
