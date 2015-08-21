//
//  DetailView1.h
//  MyMusic
//
//  Created by VuongPC1 on 8/21/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Song.h"
@interface DetailView1 : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *TitleSong;
@property (weak, nonatomic) IBOutlet UIImageView *thumbSong;
@property (weak, nonatomic) IBOutlet UITextView *ContentSong;
@property (weak, nonatomic) Song *song;

@end
