//
//  MikoMartinData.m
//  Plain Notes
//
//  Created by Joey Loesch on 12/15/2013.
//  Copyright (c) 2013 MikoMartin Mobile. All rights reserved.
//

#import "MikoMartinData.h"

@implementation MikoMartinData

static NSMutableDictionary *allNotes;
static NSString *currentKey;

+(NSMutableDictionary *)getAllNotes{
    
    if (allNotes == Nil) {
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] dictionaryForKey:kAllNotes]];
    }
    return allNotes;
}


+(void)setCurrentKey:(NSString *)key{
    currentKey = key;
}
+(NSString *)getCurrentKey{
    return currentKey;
}
+(void)setNoteForCurrentKey:(NSString *)note{
    [self setNote:note forKey:currentKey];
}
+(void)setNote:(NSString *)note forKey:(NSString *)key{
    [allNotes setObject:note forKey:key];
}
+(void)removeNoteForKey:(NSString *)key{
    [allNotes removeObjectForKey:key];
}

+(void)saveNotes{
    [[NSUserDefaults standardUserDefaults] setObject:allNotes forKey:kAllNotes];
}


@end
