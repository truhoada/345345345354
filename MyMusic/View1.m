//
//  View1.m
//  MyMusic
//
//  Created by VuongPC1 on 8/21/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "View1.h"
#import "CustomCellOFView1.h"
#import "DetailView1.h"
#import "Song.h"

@interface View1 ()
{
    NSArray *listSong ;
    NSArray *listTimeSong;
    NSArray *listImageSong;
    NSMutableArray *arraySong;
}
@end

@implementation View1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    listImageSong = [NSArray arrayWithObjects:@"piano.png", @"piano.png",nil];
    listSong = [NSArray arrayWithObjects:@"Say You Do - Tien Tien", @"My love - Chae Yeon",nil];
    listTimeSong = [NSArray arrayWithObjects:@"1:20", @"2:30", nil];
    
     arraySong = [[NSMutableArray alloc] init];
    
    Song *song = [[Song alloc] init];
    song.TitleSong = [listSong objectAtIndex:0];
    song.thumbSong = [listImageSong objectAtIndex:0];
    song.ContentSong = @"NO Content";
    [arraySong addObject:song];
    
    Song *song1 = [[Song alloc] init];
    song1.TitleSong = [listSong objectAtIndex:1];
    song1.thumbSong = [listImageSong objectAtIndex:1];
    song1.ContentSong = @"NO Content";
    
    [arraySong addObject:song1];
    
    // set RootViewController for navigation.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
   
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [listSong count];
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *simpleTableIdentifier = @"CustomCellOFView1";
    CustomCellOFView1 *cell = (CustomCellOFView1*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:simpleTableIdentifier
                                                     owner:self
                                                   options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    Song *song = [arraySong objectAtIndex:indexPath.row];
    
    cell.thumbSong.image = [UIImage imageNamed:song.thumbSong];
    cell.nameSong.text = song.TitleSong;
    cell.timeSong.text = [listTimeSong objectAtIndex:indexPath.row] ;
    
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 119;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
   
    
    DetailView1 *detail = [[DetailView1 alloc] initWithNibName:@"DetailView1"
                                                        bundle:nil];
    
     UINavigationController *naviPush = [[UINavigationController alloc] initWithRootViewController:detail];
    
    
    detail.song = [arraySong objectAtIndex:indexPath.row];
    
    //[self.navigationController pushViewController:detail animated:YES];

    [self presentViewController:naviPush
                       animated:YES
     completion:^{
         
     }];
}

@end
