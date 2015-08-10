//
//  IDEBusiness.m
//  ObjectiveCExample01
//
//  Created by Alejocram on 26/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "IDEBusiness.h"

@implementation IDEBusiness

//Metodos de clase
+(id)businessWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating
             category:(NSString *)category
              webPage:(NSURL *)webPage
                image:(UIImage *)image{
    return [[self alloc] initWithName:name
                              details:details
                               rating:rating
                             category:category
                              webPage:webPage
                                image:image];
}

//Inicializador designado
-(id)initWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating
         category:(NSString *)category
          webPage:(NSURL *)webPage
            image:(UIImage *)image{
    if(self = [super init]){
        _name = name;
        _details = details;
        _rating = rating;
        _category = category;
        _webPage = webPage;
        _image = image;
    }
    return self;
}

//Inicializadores de conveniencia
-(id)initWithName:(NSString *)name{
    return [self initWithName:name
                      details:@""
                       rating:3
                     category:@"Sitio"
                      webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"]
                        image:[UIImage imageNamed:@""]];
}


-(NSString *)description{
    return [NSString stringWithFormat:@"<%@>: %@ %@ %d", [self class], [self name], [self details], [self rating]];
}

@end
