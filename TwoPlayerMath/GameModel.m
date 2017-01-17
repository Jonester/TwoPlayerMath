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

@property (nonatomic, assign) NSInteger inputA;
@property (nonatomic, assign) NSInteger inputB;

@end


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputA = arc4random_uniform(90) + 10;
        _inputB = arc4random_uniform(90) + 10;
        _answer = _inputA + _inputB;
        _playerArray = [NSArray new];
        _currentPlayer = [PlayerModel new];
        _answerString = [NSString new];
    }
    return self;
}

- (void)startNewGame {
    self.player1 = [[PlayerModel alloc]initWithName:@"Player 1:" index:1 score:3];
    self.player2 = [[PlayerModel alloc]initWithName:@"Player 2:" index:2 score:3];
    self.currentPlayer = self.player1;
}

- (NSString *)createQuestion{
    self.inputA = arc4random_uniform(90) + 10;
    self.inputB = arc4random_uniform(90) + 10;
    return [NSString stringWithFormat:@"%@ %ld + %ld = ", self.currentPlayer.name, self.inputA, self.inputB];
}

- (NSString *)generateAnswerString: (NSInteger)numberTags{
    
    NSString *numberPush= @(numberTags).stringValue;
    self.answerString = [self.answerString stringByAppendingString:numberPush];
    return self.answerString;
}

- (NSString *)checkAnswer: (NSString *)numberTags {
    if (self.answer != [numberTags integerValue]) {
        self.currentPlayer.score--;
    }
    return [NSString stringWithFormat: @"%@    %@",self.currentPlayer.name, @(self.currentPlayer.score).stringValue];
}

-(void)nextPlayer {
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player1;
    }
}

@end
