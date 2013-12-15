//
//  MikoMartinDetailViewController.h
//  Plain Notes
//
//  Created by Joey Loesch on 12/15/2013.
//  Copyright (c) 2013 MikoMartin Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MikoMartinDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UITextView *tView;
@end
