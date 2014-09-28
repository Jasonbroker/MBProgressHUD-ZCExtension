//
//  ViewController.m
//  MBProgressHUD+ZC
//
//  Created by Jason Zhou on 9/17/14.
//  Copyright (c) 2014 JasonDigitalStudio. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+ZC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)login:(UIButton *)sender
{
    
    [MBProgressHUD showMessage:@"loading..."];
    
    
    if ( 10 == sender.tag ) {
    
    
    [MBProgressHUD performSelector:@selector(showSuccess:) withObject:@"login Success" afterDelay:1.5];
        
    }else if (20 == sender.tag){
         [MBProgressHUD performSelector:@selector(showError:) withObject:@"login error" afterDelay:1.5];
    }else{
        [MBProgressHUD performSelector:@selector(hideHUD) withObject:nil afterDelay:1.5];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
