

import Foundation
public extension ApplicationClient {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var isDefault: Bool

        public var height: Double

        public var length: Double

        public var width: Double

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case height

            case length

            case width

            case unit
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.isDefault = isDefault

            self.height = height

            self.length = length

            self.width = width

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)

            length = try container.decode(Double.self, forKey: .length)

            width = try container.decode(Double.self, forKey: .width)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
