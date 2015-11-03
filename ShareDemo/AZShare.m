//
//  AZShare.m
//  ipaimai
//
//  Created by arbullzhang on 11/3/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZShare.h"
#import "AZWeiboActivity.h"
#import "AZQQActivity.h"
#import "AZWeChatActivity.h"
#import "AZWeChatFriendsActivity.h"
#import "AZQRCodeActivity.h"

@interface AZShare ()

@property (nonatomic, strong) UIViewController *parentViewController;

@end

@implementation AZShare

- (instancetype)initWithViewController:(UIViewController *)viewController
{
    self = [super init];
    if(self)
    {
        self.parentViewController = viewController;
    }
    return self;
}

- (void)show:(NSString *)textToShare withImageToShare:(UIImage *)imageToShare withURLToShare:(NSURL *)urlToShare
{
    NSArray *activityItems = @[textToShare, imageToShare, urlToShare];
    
    AZWeiboActivity *weiboActivity = [[AZWeiboActivity alloc] init];
    weiboActivity.textToShare = textToShare;
    weiboActivity.imageToShare = imageToShare;
    weiboActivity.urlToShare = urlToShare;
    
    AZQQActivity *qqActivity = [[AZQQActivity alloc] init];
    qqActivity.textToShare = textToShare;
    qqActivity.imageToShare = imageToShare;
    qqActivity.urlToShare = urlToShare;
    
    AZWeChatActivity *wechatActivity = [[AZWeChatActivity alloc] init];
    wechatActivity.textToShare = textToShare;
    wechatActivity.imageToShare = imageToShare;
    wechatActivity.urlToShare = urlToShare;
    
    AZWeChatFriendsActivity *wechatFriendsActivity = [[AZWeChatFriendsActivity alloc] init];
    wechatFriendsActivity.textToShare = textToShare;
    wechatFriendsActivity.imageToShare = imageToShare;
    wechatFriendsActivity.urlToShare = urlToShare;
    
    AZQRCodeActivity *qrCodeActivity = [[AZQRCodeActivity alloc] init];
    qrCodeActivity.textToShare = textToShare;
    qrCodeActivity.imageToShare = imageToShare;
    qrCodeActivity.urlToShare = urlToShare;
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems applicationActivities:@[weiboActivity, qqActivity, wechatActivity, wechatFriendsActivity, qrCodeActivity]];
    activityVC.excludedActivityTypes = @[//UIActivityTypeAirDrop,
                                         //UIActivityTypeMessage,
                                         UIActivityTypeMail,
                                         UIActivityTypePrint,
                                         //UIActivityTypeCopyToPasteboard,
                                         UIActivityTypeAssignToContact,
                                         UIActivityTypeSaveToCameraRoll,
                                         UIActivityTypeAddToReadingList,
                                         UIActivityTypePostToFlickr,
                                         UIActivityTypePostToVimeo,
                                         UIActivityTypePostToWeibo,
                                         UIActivityTypePostToTencentWeibo,
                                         ];
    
    activityVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self.parentViewController presentViewController:activityVC animated:YES completion:nil];
}

@end
