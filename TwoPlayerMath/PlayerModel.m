//
//  PlayerModel.m
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PlayerModel.h"

@implementation PlayerModel

- (instancetype)initWithName: (NSString *)name index: (NSInteger)currentPlayer score:(NSInteger)score
{
    self = [super init];
    if (self) {
        _score = score;
        _name = name;
    }
    return self;
}

-(void)calculateScore: (NSInteger)previousScore {
    
}
@end
