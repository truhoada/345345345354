//
//  DetailView1.m
//  MyMusic
//
//  Created by VuongPC1 on 8/21/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "DetailView1.h"
#import <AVFoundation/AVFoundation.h>

@interface DetailView1 ()
{
    UISlider *slideD;
    AVPlayerItem* playerItem;
    AVPlayer *player;
    
}
@end

@implementation DetailView1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                             style:UIBarButtonItemStyleDone target:self
                                                            action:@selector(backView)];
    [self.navigationItem setLeftBarButtonItem:done animated:YES];
    self.title = self.song.TitleSong;
    
    
    self.thumbSong.image = [UIImage imageNamed:self.song.thumbSong];
  //  self.TitleSong.text = self.song.TitleSong;
    self.ContentSong.text = self.song.ContentSong;
    
    
    NSString* string =self.song.TitleSong;
    NSURL *soundPath = [[NSBundle mainBundle] URLForResource:string withExtension:@"mp3"];
    [self playSong:soundPath];
}
-(void)playSong: (NSURL *)url{
    
    playerItem = [[AVPlayerItem alloc] initWithURL:url];
    player = [[AVPlayer alloc] initWithPlayerItem:playerItem];
    [player play];
    
}
-(void)backView{
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

@end
