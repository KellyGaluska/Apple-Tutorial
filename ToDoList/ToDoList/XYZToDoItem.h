//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by Student on 5/8/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
