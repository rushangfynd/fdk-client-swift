

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaidOrderDetailsResponse
         Used By: Payment
     */
    class PaidOrderDetailsResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var data: [[String: Any]]?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case data

            case message
        }

        public init(data: [[String: Any]]? = nil, message: String? = nil, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.data = data

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(data, forKey: .data)

            try? container.encode(message, forKey: .message)
        }
    }
}