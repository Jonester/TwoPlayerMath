//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "GameModel.h"
#import "PlayerModel.h"

@interface GameModel ()

@property (nonatomic, strong) NSString *answer;
@property (nonatomic, assign) NSInteger currentPlayer;
@property (nonatomic, assign) NSInteger inputA;
@property (nonatomic, assign) NSInteger inputB;

@end


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputA = arc4random_uniform(900) + 100;
        _inputB = arc4random_uniform(900) + 100;
        _answer = @(_inputA + _inputB).stringValue;
        _currentPlayer = 1;
    }
    return self;
}

- (NSString *)createQuestion: (PlayerModel *)player {
    return [NSString stringWithFormat:@"%@ %ld + %ld = ", player.name, self.inputA, self.inputB];
}

- (void)checkAnswer: (NSString *)answer {
    
    if (player.currentPlayer == 1) {
        player.currentPlayer = 2;
    } else {
        player.currentPlayer = 1;
    }
}
@end
