//
//  MikoMartinDetailViewController.m
//  Plain Notes
//
//  Created by Joey Loesch on 12/15/2013.
//  Copyright (c) 2013 MikoMartin Mobile. All rights reserved.
//

#import "MikoMartinDetailViewController.h"
#import "MikoMartinData.h"

@interface MikoMartinDetailViewController ()
- (void)configureView;
@end

@implementation MikoMartinDetailViewController

@synthesize tView;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [MikoMartinData setCurrentKey:_detailItem];
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    NSString *currentNote = [[MikoMartinData getAllNotes]objectForKey:[MikoMartinData getCurrentKey]];
    if (![currentNote isEqualToString:kDefaultText]) {
        self.tView.text = currentNote;
    } else {
        self.tView.text = @"";
    }
    [self.tView becomeFirstResponder];
}

-(void)viewWillDisappear:(BOOL)animated{
    if (![self.tView.text isEqualToString:@""]) {
        [MikoMartinData setNoteForCurrentKey:self.tView.text];
    } else {
        [MikoMartinData removeNoteForKey:[MikoMartinData getCurrentKey]];
    }
    [MikoMartinData saveNotes];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
