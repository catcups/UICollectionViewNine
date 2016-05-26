//
//  QHCollectionViewNine.m
//  Collection九宫格封装
//
//  Created by qh on 16/5/24.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "QHCollectionViewNine.h"

@interface QHCollectionViewNine ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, strong) NSArray *imageArr;
@property (nonatomic, strong) UICollectionViewFlowLayout *Layout;
@end
@implementation QHCollectionViewNine

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout withImage:(NSArray *)image {
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        _imageArr = image;
        _Layout = (UICollectionViewFlowLayout *)layout;
        self.pagingEnabled = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.bounces = NO;
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([UICollectionViewCell class])];
    }
    return self;
}
#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imageArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([UICollectionViewCell class]) forIndexPath:indexPath];
    UIImageView *imageV = nil;
    if ([NSStringFromClass([_imageArr[indexPath.row] class]) isEqualToString:@"UIImage"]) { // 如果是UIImage数组 即 本地图片
        imageV = [[UIImageView alloc] initWithImage:_imageArr[indexPath.row]];
    } else { // 如果是NSString 数组 即 urlStr
        imageV = [[UIImageView alloc] init];
        // 赋值在这里用SDWebImage加载图片
    }
    CGRect imageFrame = imageV.frame;
    imageFrame.size = _Layout.itemSize;
    imageV.frame = imageFrame;
    [cell.contentView addSubview:imageV];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld分区---%ldItem", indexPath.section, indexPath.row);
}

@end
