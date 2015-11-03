//
//  ViewController.m
//  ShareModule
//
//  Created by arbullzhang on 11/2/15.
//  Copyright © 2015 arbullzhang. All rights reserved.
//

#import "ViewController.h"
#import "AZShare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareButtonAction:(id)sender
{
    NSString *textToShare = @"要分享的文本内容";
    UIImage *imageToShare = [UIImage imageNamed:@"iosshare"];
    NSURL *urlToShare = [NSURL URLWithString:@"http://blog.csdn.net/hitwhylz"];

    AZShare *share = [[AZShare alloc] initWithViewController:self];
    [share show:textToShare withImageToShare:imageToShare withURLToShare:urlToShare];
}

@end
