

import Foundation
public extension PlatformClient {
    /*
         Model: Page1
         Used By: Orders
     */

    class Page1: Codable {
        public var current: Int

        public var hasNext: Bool

        public var itemTotal: Int

        public var size: Int

        public var pageType: String

        public enum CodingKeys: String, CodingKey {
            case current

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case size

            case pageType = "page_type"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.current = current

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.size = size

            self.pageType = pageType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            pageType = try container.decode(String.self, forKey: .pageType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(pageType, forKey: .pageType)
        }
    }
}
