//
//  CustomCellOFView1.m
//  MyMusic
//
//  Created by VuongPC1 on 8/21/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "CustomCellOFView1.h"


@implementation CustomCellOFView1
@synthesize timeSong = _timeSong;
@synthesize thumbSong  = _thumbSong;
@synthesize nameSong = _nameSong;

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    if (_nameSong) {
        
    }
    
  }

@end
