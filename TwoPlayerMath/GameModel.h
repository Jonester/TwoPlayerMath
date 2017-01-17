//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayerModel;

@interface GameModel : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSArray *playerArray;
@property (nonatomic, strong) NSString *answerString;
@property (nonatomic, strong) PlayerModel *currentPlayer;
@property (nonatomic, strong) PlayerModel *player1;
@property (nonatomic, strong) PlayerModel *player2;

- (NSString *)createQuestion;
- (NSString *)checkAnswer: (NSString *)answer;
- (NSString *)generateAnswerString: (NSInteger)numberTags;
- (void)startNewGame;
- (void)nextPlayer;

@end
