//
//  QHCollectionViewNine.h
//  Collection九宫格封装
//
//  Created by qh on 16/5/24.
//  Copyright © 2016年 qh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QHCollectionViewNine : UICollectionView
/**
 *  @frame: collectionView的frame
 *
 *  @layout: UICollectionViewFlowLayout的属性 这次放在外界设置了，比较方便
 *
 *  @image: 本地图片数组(NSArray<UIImage *> *) 或者网络url的字符串(NSArray<NSString *> *)
 *
 */
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout withImage:(NSArray *)image;
@end
