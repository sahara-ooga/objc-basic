//
//  DaoToDos.h
//  2-3-2
//
//  Created by yuu ogasawara on 2017/04/03.
//  Copyright © 2017年 stv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"
#import "ToDo.h"
#import "DateTrimmer.h"

//テーブルを足す場合は、このTableName型と、TableNameTextListを追加のこと
//参考：http://qiita.com/ShinChan/items/e4839aefe4d9d89198a8
typedef NS_ENUM(NSUInteger, TableName){
    release,
    test,
    develop
};
#define TableNameTextList @[@"tr_todo",@"tr_todo_test",@"tr_todo_develop"]      //テーブル名のリテラル
//TableName型から文字列
#define GetTableNameText(type) TableNameTextList[type]
//文字列からTableName型
#define GetTableName(typeText) (TableName)[TableNameTextList indexOfObject:typeText]

@interface DaoToDos : NSObject
-(id _Nullable)initForTest;
- (nullable ToDo*)add:(ToDo *_Nonnull)todo;
- (nullable ToDo*)add:(ToDo *_Nonnull)todo
                   to:(TableName)tableName;

-(nullable NSArray*)todos;
-(NSArray*_Nullable)todosFrom:(TableName)tableName;
-(void)deleteAllRecordIn:(TableName)tableName;

@end