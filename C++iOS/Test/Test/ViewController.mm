//
//  ViewController.m
//  Test
//
//  Created by LayaBox on 2020/10/16.
//

#import "ViewController.h"
#include "Test.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    printf("start ...\n");
    testLoop();
    testFunction();
    testMatrixAttribute();
    testMatrixArray();
}


@end
