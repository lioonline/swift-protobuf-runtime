// Test/Sources/TestSuite/Test_Descriptor.swift - Exercise Descriptor type
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Since Descriptor is purely compiled (there is no hand-coding
/// in it) this is a fairly thin test just to ensure that the proto
/// does get into the runtime.
///
// -----------------------------------------------------------------------------

import Foundation
import XCTest
import Protobuf

class Test_Descriptor: XCTestCase, PBTestHelpers {
    typealias MessageTestType = Google_Protobuf_FileDescriptorProto

    func testExists() {
        assertEncode([10,13,83,111,109,101,80,114,111,116,111,70,105,108,101,
            34,13,10,11,83,111,109,101,77,101,115,115,97,103,101]) { (o: inout MessageTestType) in
            var messageDescriptor1 = Google_Protobuf_DescriptorProto()
            messageDescriptor1.name = "SomeMessage"
            o.name = "SomeProtoFile"
            o.messageType = [messageDescriptor1]
        }
    }
}
