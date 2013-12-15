//
//  DetailViewController.h
//  Plain Ol' Notes
//
//  Created by LDC on 4/24/13.
//  Copyright (c) 2013 Todd Perkins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
