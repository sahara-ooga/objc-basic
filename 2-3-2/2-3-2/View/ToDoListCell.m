//
//  ToDoListCell.m
//  2-3-2
//
//  Created by yuu ogasawara on 2017/04/05.
//  Copyright © 2017年 stv. All rights reserved.
//

#import "ToDoListCell.h"
#import "NSDate+DateFormat.h"

@implementation ToDoListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCell:(ToDo*)todo{
    self.titleLabel.text = todo.todoTitle;
    self.expirationDateLabel.text = [todo.limitDate systemDateString];
}

#pragma mark utility
+ (NSString*)className {
    return NSStringFromClass([ToDoListCell class]);
}
@end
