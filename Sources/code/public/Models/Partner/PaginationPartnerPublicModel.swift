

import Foundation
public extension PublicClient.Partner {
    /*
         Model: Pagination
         Used By: Partner
     */

    class Pagination: Codable {
        public var current: Double?

        public var hasNext: Bool?

        public var isOf: Double?

        public var itemTotal: Double?

        public var size: Double?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case current

            case hasNext = "has_next"

            case isOf = "is_of"

            case itemTotal = "item_total"

            case size

            case type
        }

        public init(current: Double? = nil, hasNext: Bool? = nil, isOf: Double? = nil, itemTotal: Double? = nil, size: Double? = nil, type: String? = nil) {
            self.current = current

            self.hasNext = hasNext

            self.isOf = isOf

            self.itemTotal = itemTotal

            self.size = size

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                current = try container.decode(Double.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isOf = try container.decode(Double.self, forKey: .isOf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTotal = try container.decode(Double.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(Double.self, forKey: .size)

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

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(isOf, forKey: .isOf)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}