//
//  AZWeiboActivity.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZWeiboActivity.h"

static NSString * const AZWeiboActivityType = @"com.arbull.share.activity.weibo";

@implementation AZWeiboActivity

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}

- (NSString *)activityTitle
{
    return @"新浪微博";
}

- (NSString *)activityType
{
    return AZWeiboActivityType;
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_weibo"];
}

- (void)performActivity
{
}

@end
