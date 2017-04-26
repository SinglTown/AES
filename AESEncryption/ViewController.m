//
//  ViewController.m
//  AESEncryption
//
//  Created by 赵传保 on 17/4/26.
//  Copyright © 2017年 暗夜. All rights reserved.
//

#import "ViewController.h"
#import "AESCrypt.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //AES加密和解密,加密字符串
    NSString *key = @"encryptedKey";
    NSString *content = @"少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所";
    //加密
    NSString *encryContent = [AESCrypt encrypt:content password:key];
    //解密
    NSString *deEncryContent = [AESCrypt decrypt:encryContent password:key];
    NSLog(@"%@%@",encryContent,deEncryContent);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
