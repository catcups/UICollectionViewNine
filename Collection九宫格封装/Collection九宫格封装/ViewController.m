//
//  ViewController.m
//  Collection九宫格封装
//
//  Created by qh on 16/5/24.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "ViewController.h"
#import "QHCollectionViewNine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake((self.view.frame.size.width - 40) / 3, (self.view.frame.size.width - 40) / 3);
    layout.minimumLineSpacing = 10.0; // 竖
    layout.minimumInteritemSpacing = 0.0; // 横
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    UIImage *image1 = [UIImage imageNamed:@"w.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"c.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"Mao"];
    NSArray *array = @[image2, image2, image3, image2, image3, image1, image3, image1, image1];

    QHCollectionViewNine *nineView = [[QHCollectionViewNine alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.width) collectionViewLayout:layout withImage:array];
    [self.view addSubview:nineView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
