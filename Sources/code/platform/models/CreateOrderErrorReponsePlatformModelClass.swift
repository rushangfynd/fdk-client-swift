

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderErrorReponse
         Used By: Order
     */

    class CreateOrderErrorReponse: Codable {
        public var status: Int

        public var info: [String: Any]?

        public var message: String

        public var requestId: String?

        public var exception: String?

        public var code: String?

        public var meta: String?

        public var stackTrace: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case info

            case message

            case requestId = "request_id"

            case exception

            case code

            case meta

            case stackTrace = "stack_trace"
        }

        public init(code: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            self.status = status

            self.info = info

            self.message = message

            self.requestId = requestId

            self.exception = exception

            self.code = code

            self.meta = meta

            self.stackTrace = stackTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Int.self, forKey: .status)

            do {
                info = try container.decode([String: Any].self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(String.self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(info, forKey: .info)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(requestId, forKey: .requestId)

            try? container.encode(exception, forKey: .exception)

            try? container.encode(code, forKey: .code)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(stackTrace, forKey: .stackTrace)
        }
    }
}
