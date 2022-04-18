import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OrderCommitted
         Used By: Order
     */

    class OrderCommitted: Codable {
        public var count: Int?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case count

            case updatedAt = "updated_at"
        }

        public init(count: Int? = nil, updatedAt: String? = nil) {
            self.count = count

            self.updatedAt = updatedAt
        }

        public func duplicate() -> OrderCommitted {
            let dict = self.dictionary!
            let copy = OrderCommitted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}