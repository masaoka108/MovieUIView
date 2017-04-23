//
//  ViewController.m
//  MovieUIView
//
//  Created by USER on 2017/04/20.
//  Copyright © 2017年 masahiro okamura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    AVPlayer *videoPlayer;
    NSString *moviePath;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //ResoucesフォルダのファイルをDocuments にファイルをコピー。(Resoucesフォルダのファイルをアプリの一部としてiPhoneにコピーするにはBuild Phases -> copy Bundle Resouces に該当ファイルを加える)
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths1 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths1 objectAtIndex:0];
    
    //NSString *txtPath = [documentsDirectory stringByAppendingPathComponent:@"txtFile.txt"];
    NSString *txtPath = [documentsDirectory stringByAppendingPathComponent:@"lowvision.mp4"];
    
    if ([fileManager fileExistsAtPath:txtPath] == NO) {
//        NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"txtFile" ofType:@"txt"];
        NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"lowvision" ofType:@"mp4"];
        [fileManager copyItemAtPath:resourcePath toPath:txtPath error:&error];
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
    // 今回はすでにDocuments以下に置いてある動画を再生する
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *directory = [paths objectAtIndex:0];
    moviePath = [directory stringByAppendingPathComponent:@"/lowvision.mp4"];
    
//    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];
    NSURL *movieURL = [NSURL URLWithString:@"http://zine.hiliberate.biz/movie/lowvision.mp4"];
    
    videoPlayer = [[AVPlayer alloc] initWithURL:movieURL];
    
    AVPlayerLayer* layer = ( AVPlayerLayer* )playerView.layer;
    layer.videoGravity = AVLayerVideoGravityResizeAspect;
    layer.player       = videoPlayer;
    [videoPlayer play];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
