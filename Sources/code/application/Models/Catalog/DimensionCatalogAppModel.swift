

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var isDefault: Bool

        public var height: Double

        public var length: Double

        public var unit: String

        public var width: Double

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case height

            case length

            case unit

            case width
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.isDefault = isDefault

            self.height = height

            self.length = length

            self.unit = unit

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)

            width = try container.decode(Double.self, forKey: .width)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
