//
//  ViewController.m
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import "ViewController.h"
#import "XKAlertView.h"
#import "XKActionSheet.h"
#import "XKAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:(UIBarButtonItemStylePlain) target:self action:@selector(onClickBarbuttonItemEvent:)];
}

- (void)onClickBarbuttonItemEvent:(UIBarButtonItem*)sender{
    
//    XKAlertView * alertView = [[XKAlertView alloc] initWithTitle:@"4545" msg:@"8888" cancelButtonTitle:@"cancel" otherButtonTitles:@[@"done",@"complete"] handlerBlock:^(NSInteger index) {
//
//        NSLog(@"index -- %ld",index);
//    }];
//
//    [alertView show];
    
//    XKActionSheet * actionSheet = [[XKActionSheet alloc] initWithTitle:@"actionSheet" cancelButtonTitle:@"cancel" destructiveButtonTitle:@"destructive" otherButtonTitles:@[@"done",@"complete"] handlerBlock:^(NSInteger index) {
//
//        NSLog(@"index -- %ld",index);
//    }];
//
//    [actionSheet showInView:self.view];
    
//    XKAlertController * vc = [XKAlertController xk_AlertController:@"XKAlertController" msg:@"test" preferredStyle:(UIAlertControllerStyleAlert) actionTitles:@[@"cancel",@"done"] actionStyles:@[@0,@0] handlerBlock:^(NSInteger index) {
//
//        NSLog(@"index -- %ld",index);
//    }];
//
//    [self.navigationController  presentViewController:vc animated:YES completion:nil];
    
    
    XKAlertController * vc = [XKAlertController xk_AlertController:@"XKAlertController" msg:@"test" preferredStyle:(UIAlertControllerStyleActionSheet) actionTitles:@[@"cancel",@"done"] actionStyles:@[@0,@0] handlerBlock:^(NSInteger index) {
        
        NSLog(@"index -- %ld",index);
    }];
    
    [self.navigationController  presentViewController:vc animated:YES completion:nil];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
