//
//  DesignViewController.h
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DesignViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (weak,nonatomic) IBOutlet UIView *topView;
@property (weak,nonatomic) IBOutlet UIView *bottomView;
@property (weak,nonatomic) IBOutlet UIImageView *profilePhoto;
@property (weak,nonatomic) IBOutlet UILabel *loginLabel;
@property (weak,nonatomic) IBOutlet UILabel *nameLabel;
@property (weak,nonatomic) IBOutlet UIButton *followButton;
@property (weak,nonatomic) IBOutlet UIButton *shareButton;
@property (weak,nonatomic) IBOutlet UIButton *numberOfPagesButton;
@property (weak,nonatomic) IBOutlet UIButton *numberOfFollowersButton;
@property (weak,nonatomic) IBOutlet UIButton *numberOfFollowingButton;

@end
