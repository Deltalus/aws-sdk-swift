// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Mobileanalytics {

    public struct Event: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public var metrics: [String: Double]? = nil
        /// The session the event occured within. 
        public var session: Session? = nil
        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public var attributes: [String: String]? = nil
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public var timestamp: String = ""
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public var eventType: String = ""
        /// The version of the event.
        public var version: String? = nil

        public init() {}

        public init(metrics: [String: Double]? = nil, session: Session? = nil, attributes: [String: String]? = nil, timestamp: String, eventType: String, version: String? = nil) {
            self.metrics = metrics
            self.session = session
            self.attributes = attributes
            self.timestamp = timestamp
            self.eventType = eventType
            self.version = version
        }

    }

    public struct Session: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public var startTimestamp: String? = nil
        /// A unique identifier for the session
        public var id: String? = nil
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public var stopTimestamp: String? = nil
        /// The duration of the session.
        public var duration: Int64? = nil

        public init() {}

        public init(startTimestamp: String? = nil, id: String? = nil, stopTimestamp: String? = nil, duration: Int64? = nil) {
            self.startTimestamp = startTimestamp
            self.id = id
            self.stopTimestamp = stopTimestamp
            self.duration = duration
        }

    }

    public struct PutEventsInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var headerParams: [String: String] {
            return ["x-amz-Client-Context-Encoding": "clientContextEncoding", "x-amz-Client-Context": "clientContext"]
        }
        /// The client context including the client ID, app title, app version and package name.
        public var clientContext: String = ""
        /// The encoding used for the client context.
        public var clientContextEncoding: String? = nil
        /// An array of Event JSON objects
        public var events: [Event] = []

        public init() {}

        public init(clientContext: String, clientContextEncoding: String? = nil, events: [Event]) {
            self.clientContext = clientContext
            self.clientContextEncoding = clientContextEncoding
            self.events = events
        }

    }

}