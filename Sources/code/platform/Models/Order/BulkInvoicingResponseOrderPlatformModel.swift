

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BulkInvoicingResponse
         Used By: Order
     */

    class BulkInvoicingResponse: Codable {
        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String? = nil, success: Bool) {
            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BulkInvoicingResponse
         Used By: Order
     */

    class BulkInvoicingResponse: Codable {
        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String? = nil, success: Bool) {
            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}