//
//  main.m
//  Payment App
//
//  Created by Errol Cheong on 2017-06-30.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char userInput[255];
        NSInteger randomValue = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com\n"
              "Your total today is $%i.\n"
              "Please select your payment method:\n"
              "1: Paypal, 2: Stripe, 3: Amazon", randomValue);
        fgets(userInput, 255, stdin);
        NSString *userInputString = [NSString stringWithUTF8String:userInput];
        NSCharacterSet *removeEmptyLines = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *cleanUserInputString = [userInputString stringByTrimmingCharactersInSet:removeEmptyLines];
        
        NSUInteger paymentMethodInput = cleanUserInputString.integerValue;
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        [paymentGateway processPaymentAmount:randomValue];
        NSLog(@"You chose %li", paymentMethodInput);
    }
    return 0;
}
