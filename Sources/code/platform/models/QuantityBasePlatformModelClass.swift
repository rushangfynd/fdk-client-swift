

import Foundation
public extension PlatformClient {
    /*
         Model: QuantityBase
         Used By: Catalog
     */

    class QuantityBase: Codable {
        public var count: Int?

        public var updatedAt: Int?

        public enum CodingKeys: String, CodingKey {
            case count

            case updatedAt = "updated_at"
        }

        public init(count: Int? = nil, updatedAt: Int? = nil) {
            self.count = count

            self.updatedAt = updatedAt
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
                updatedAt = try container.decode(Int.self, forKey: .updatedAt)

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
