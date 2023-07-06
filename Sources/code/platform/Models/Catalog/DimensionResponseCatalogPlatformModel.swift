

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var width: Double

        public var isDefault: Bool

        public var length: Double

        public var unit: String

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case width

            case isDefault = "is_default"

            case length

            case unit

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.width = width

            self.isDefault = isDefault

            self.length = length

            self.unit = unit

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            width = try container.decode(Double.self, forKey: .width)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var width: Double

        public var isDefault: Bool

        public var length: Double

        public var unit: String

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case width

            case isDefault = "is_default"

            case length

            case unit

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.width = width

            self.isDefault = isDefault

            self.length = length

            self.unit = unit

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            width = try container.decode(Double.self, forKey: .width)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}
