//
//  GifsViewController.m
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import "GifsViewController.h"
#import "GifsCollectionViewCell.h"
#import "UIImage+animatedGIF.h"

@interface GifsViewController ()

@end

@implementation GifsViewController

static NSString *gifNames[9] = {
    @"gifAssets/0",
    @"gifAssets/1",
    @"gifAssets/2",
    @"gifAssets/3",
    @"gifAssets/4",
    @"gifAssets/5",
    @"gifAssets/6",
    @"gifAssets/7",
    @"gifAssets/8"
};

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GifsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *fPath = [[NSBundle mainBundle] pathForResource: gifNames[indexPath.row] ofType: @"gif"];
    NSData *gifData = [NSData dataWithContentsOfFile: fPath];
    
    cell.gifImage.image = [UIImage animatedImageWithAnimatedGIFData:gifData];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
   CGFloat size = self.view.bounds.size.width/3 - 20;
   return CGSizeMake(size, size);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
