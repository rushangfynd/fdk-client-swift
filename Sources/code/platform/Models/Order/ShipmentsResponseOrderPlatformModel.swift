

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentsResponse
         Used By: Order
     */

    class ShipmentsResponse: Codable {
        public var message: String?

        public var meta: [String: Any]?

        public var status: Int?

        public var code: String?

        public var identifier: String?

        public var exception: String?

        public var stackTrace: String?

        public var finalState: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case meta

            case status

            case code

            case identifier

            case exception

            case stackTrace = "stack_trace"

            case finalState = "final_state"
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String? = nil, message: String? = nil, meta: [String: Any]? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.message = message

            self.meta = meta

            self.status = status

            self.code = code

            self.identifier = identifier

            self.exception = exception

            self.stackTrace = stackTrace

            self.finalState = finalState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(finalState, forKey: .finalState)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentsResponse
         Used By: Order
     */

    class ShipmentsResponse: Codable {
        public var message: String?

        public var meta: [String: Any]?

        public var status: Int?

        public var code: String?

        public var identifier: String?

        public var exception: String?

        public var stackTrace: String?

        public var finalState: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case meta

            case status

            case code

            case identifier

            case exception

            case stackTrace = "stack_trace"

            case finalState = "final_state"
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String? = nil, message: String? = nil, meta: [String: Any]? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.message = message

            self.meta = meta

            self.status = status

            self.code = code

            self.identifier = identifier

            self.exception = exception

            self.stackTrace = stackTrace

            self.finalState = finalState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(finalState, forKey: .finalState)
        }
    }
}
