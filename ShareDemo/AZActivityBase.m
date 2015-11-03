//
//  AZActivityBase.m
//  ShareDemo
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "AZActivityBase.h"

@implementation AZActivityBase

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    return YES;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    for (NSObject *item in activityItems)
    {
        if  ([item isKindOfClass:[UIImage class]])
        {
            self.imageToShare = (UIImage *) item;
        }
        else if  ([item isKindOfClass:[NSString class]])
        {
            self.textToShare = (NSString *) item;
        }
        else if ([item isKindOfClass:[NSURL class]])
        {
            self.urlToShare = (NSURL *) item;
        }
    }
}

@end
