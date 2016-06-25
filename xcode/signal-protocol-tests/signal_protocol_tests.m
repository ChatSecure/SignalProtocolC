//
//  signal_protocol_tests.m
//  signal-protocol-tests
//
//  Created by Chris Ballinger on 6/25/16.
//
//

#import <XCTest/XCTest.h>
@import SignalProtocolC;

@interface signal_protocol_tests : XCTestCase

@end

@implementation signal_protocol_tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testContextInit {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    signal_context *context = NULL;
    signal_context_create(&context, NULL);
    if (context == NULL) {
        XCTFail(@"no context");
    }
}

@end
