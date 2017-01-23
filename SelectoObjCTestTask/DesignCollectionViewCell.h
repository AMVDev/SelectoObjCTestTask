//
//  DesignCollectionViewCell.h
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DesignCollectionViewCell : UICollectionViewCell

@property (weak,nonatomic) IBOutlet UIImageView *cellImage;
@property (weak,nonatomic) IBOutlet UILabel *cellLabel;

@end
