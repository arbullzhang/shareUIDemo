//
//  AZWeChatActivity.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZWeChatActivity.h"

static NSString * const AZWeChatActivityType = @"com.arbull.share.activity.wechat";

@implementation AZWeChatActivity

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}

- (NSString *)activityTitle
{
    return @"微信";
}

- (NSString *)activityType
{
    return AZWeChatActivityType;
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_wechat"];
}

- (void)performActivity
{

}

@end
