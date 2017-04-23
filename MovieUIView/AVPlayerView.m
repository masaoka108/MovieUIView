//
//  AVPlayerView.m
//  MovieUIView
//
//  Created by USER on 2017/04/20.
//  Copyright © 2017年 masahiro okamura. All rights reserved.
//

#import "AVPlayerView.h"

@implementation AVPlayerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// AVPlayerLayerが使えますよと教えてあげる
// これなしで、普通のUIViewにくっつけても動かないので大事
+ (Class)layerClass
{
    return [AVPlayerLayer class];
}

@end
