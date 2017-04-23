//
//  ViewController.h
//  MovieUIView
//
//  Created by USER on 2017/04/20.
//  Copyright © 2017年 masahiro okamura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>
#import <AVFoundation/AVFoundation.h>

#import "AVPlayerView.h"

@interface ViewController : UIViewController{

// あとでくっつける先となるUIViewの継承クラス
// 上で作ったやつ
IBOutlet AVPlayerView *playerView;

}
    
@end

