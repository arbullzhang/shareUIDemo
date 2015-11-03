//
//  AZWeChatFriendsActivity.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZWeChatFriendsActivity.h"

static NSString * const AZWeChatFriendsActivityType = @"com.arbull.share.activity.wechatfriends";

@implementation AZWeChatFriendsActivity

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}

- (NSString *)activityTitle
{
    return @"朋友圈";
}

- (NSString *)activityType
{
    return AZWeChatFriendsActivityType;
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_wechat_friends"];
}

- (void)performActivity
{

}

@end
