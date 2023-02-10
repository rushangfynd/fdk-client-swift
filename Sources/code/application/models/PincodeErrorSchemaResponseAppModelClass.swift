

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeErrorSchemaResponse
         Used By: Logistic
     */
    class PincodeErrorSchemaResponse: Codable {
        public var value: String?

        public var message: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case message

            case type
        }

        public init(message: String? = nil, type: String? = nil, value: String? = nil) {
            self.value = value

            self.message = message

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

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

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(value, forKey: .value)

            try? container.encode(message, forKey: .message)

            try? container.encode(type, forKey: .type)
        }
    }
}
