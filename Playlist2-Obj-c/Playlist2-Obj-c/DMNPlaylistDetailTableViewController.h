//
//  DMNPlaylistDetailTableViewController.h
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DMNPlaylist;

@interface DMNPlaylistDetailTableViewController : UITableViewController

@property (nonatomic, strong) DMNPlaylist *playlist;

@end
