

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var current: Int

        public var hasPrevious: Bool

        public var total: Int

        public var size: Int

        public var hasNext: Bool

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case current

            case hasPrevious = "has_previous"

            case total

            case size

            case hasNext = "has_next"

            case type
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.current = current

            self.hasPrevious = hasPrevious

            self.total = total

            self.size = size

            self.hasNext = hasNext

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var current: Int

        public var hasPrevious: Bool

        public var total: Int

        public var size: Int

        public var hasNext: Bool

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case current

            case hasPrevious = "has_previous"

            case total

            case size

            case hasNext = "has_next"

            case type
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.current = current

            self.hasPrevious = hasPrevious

            self.total = total

            self.size = size

            self.hasNext = hasNext

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
