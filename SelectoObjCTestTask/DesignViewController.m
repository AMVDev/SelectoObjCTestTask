//
//  DesignViewController.m
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import "DesignViewController.h"
#import "DesignCollectionViewCell.h"

@interface DesignViewController ()

@end

@implementation DesignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layerOptions];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)layerOptions
{
    //profilePhoto
    self.profilePhoto.backgroundColor = [UIColor redColor];
    self.profilePhoto.image = [UIImage imageNamed:@"img"];
    self.profilePhoto.clipsToBounds = true;
    CALayer *profilePhotoLayer = self.profilePhoto.layer;
    profilePhotoLayer.cornerRadius = self.view.bounds.size.width*0.33/2;
    //navigationBar
    self.navigationItem.title = @"Vika@";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:17/255.0f green:39/255.0f blue:45/255.0f alpha:1.0f];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    //follow and share buttons
    CALayer *followButtonLayer = self.followButton.layer;
    CALayer *shareButtonLayer = self.shareButton.layer;
    followButtonLayer.cornerRadius = self.view.bounds.size.width*0.093/2;
    followButtonLayer.backgroundColor = [UIColor colorWithRed:55/255.0f green:181/255.0f blue:190/255.0f alpha:1.0f].CGColor;
    shareButtonLayer.cornerRadius = self.view.bounds.size.width*0.093/2;
    shareButtonLayer.borderWidth = 1;
    shareButtonLayer.borderColor = [UIColor colorWithRed:55/255.0f green:181/255.0f blue:190/255.0f alpha:1.0f].CGColor;
    
    //pages,followers,followings buttons
    self.numberOfPagesButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.numberOfPagesButton.titleLabel.numberOfLines = 0;
    self.numberOfPagesButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.numberOfPagesButton setTitle: @"" forState: UIControlStateNormal];
    self.numberOfFollowersButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.numberOfFollowersButton.titleLabel.numberOfLines = 0;
    self.numberOfFollowersButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    //[self.numberOfPagesButton setTitle: @"1244\nFollowers" forState: UIControlStateNormal];
    CALayer *nOPagesLayer = self.numberOfPagesButton.layer;
    CALayer *nOFollowersLayer = self.numberOfFollowersButton.layer;
    CALayer *nOFollowingsLayer = self.numberOfFollowingButton.layer;
    nOPagesLayer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    nOFollowersLayer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    nOFollowingsLayer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    nOPagesLayer.borderWidth = 1;
    nOFollowersLayer.borderWidth = 1;
    nOFollowingsLayer.borderWidth = 1;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DesignCollectionViewCell *sCell = [collectionView cellForItemAtIndexPath:indexPath];
    sCell.cellImage.image = [UIImage imageNamed:@"chs"];
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DesignCollectionViewCell *sCell = [collectionView cellForItemAtIndexPath:indexPath];
    sCell.cellImage.image = [UIImage imageNamed:@"left"];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DesignCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    if(cell.selected)
    {
        cell.cellImage.image = [UIImage imageNamed:@"chs"];
    }
    else
    {
        cell.cellImage.image = [UIImage imageNamed:@"left"];
    }
    
    return cell;
}




- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat wSize = self.bottomView.bounds.size.width/3 - 20;
    CGFloat hSize = self.bottomView.bounds.size.height/2 - 20;
    return CGSizeMake(wSize, hSize);
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
