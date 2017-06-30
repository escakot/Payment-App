//
//  PaymentGateway.h
//  Payment App
//
//  Created by Errol Cheong on 2017-06-30.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id paymentDelegate;

//- (void)processPaymentAmount:(NSInteger)money;



@end
