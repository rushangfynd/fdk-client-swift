

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderErrorReponse
         Used By: Order
     */

    class CreateOrderErrorReponse: Codable {
        public var meta: String?

        public var status: Int

        public var exception: String?

        public var code: String?

        public var stackTrace: String?

        public var message: String

        public var info: [String: Any]?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case status

            case exception

            case code

            case stackTrace = "stack_trace"

            case message

            case info

            case requestId = "request_id"
        }

        public init(code: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            self.meta = meta

            self.status = status

            self.exception = exception

            self.code = code

            self.stackTrace = stackTrace

            self.message = message

            self.info = info

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

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
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                info = try container.decode([String: Any].self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(exception, forKey: .exception)

            try? container.encode(code, forKey: .code)

            try? container.encode(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(info, forKey: .info)

            try? container.encode(requestId, forKey: .requestId)
        }
    }
}
