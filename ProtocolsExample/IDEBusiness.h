//
//  IDEBusiness.h
//  ObjectiveCExample01
//
//  Created by Alejocram on 26/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IDEBusiness : NSObject

//Propiedades
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *details;
@property (nonatomic, assign) int rating;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, strong) NSURL *webPage;
@property (nonatomic, strong) UIImage *image;


//Metodos de clase
+(id)businessWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating
             category:(NSString *)category
              webPage:(NSURL *)webPage
                image:(UIImage *)image;

//Inicializador designado
-(id)initWithName:(NSString *)name
          details:(NSString *)details
           rating:(int)rating
         category:(NSString *)category
          webPage:(NSURL *)webPage
            image:(UIImage *)image;

//Inicializadores de conveniencia
-(id)initWithName:(NSString *)name;

@end
