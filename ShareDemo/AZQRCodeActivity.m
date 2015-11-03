//
//  AZQRCodeActivity.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZQRCodeActivity.h"

static NSString * const AZPMQRCodeActivityActivityType = @"com.arbull.share.activity.qrcode";

@implementation AZQRCodeActivity

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryAction;
}

- (NSString *)activityTitle
{
    return @"二维码";
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"icon_qrcode"];
}

- (NSString *)activityType
{
    return AZPMQRCodeActivityActivityType;
}

- (void)performActivity
{

}

@end
