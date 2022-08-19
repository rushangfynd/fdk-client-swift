

import Foundation
public extension PlatformClient {
    /*
         Model: ErrorResponse
         Used By: Order
     */

    class ErrorResponse: Codable {
        public var status: Int

        public var errorTrace: String?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case status

            case errorTrace = "error_trace"

            case message
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.status = status

            self.errorTrace = errorTrace

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Int.self, forKey: .status)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
