//
//  PlayerModel.m
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PlayerModel.h"

@implementation PlayerModel

- (instancetype)initWithName: (NSString *)name andIndex: (NSInteger)currentPlayer
{
    self = [super init];
    if (self) {
        _score = 3;
        _name = @"Player 1:  ";
        _currentPlayer = 1;
    }
    return self;
}

-(void)calculateScore: (NSInteger)previousScore {
    
}
@end
