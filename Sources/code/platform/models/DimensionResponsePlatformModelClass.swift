

import Foundation
public extension PlatformClient {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var length: Double

        public var width: Double

        public var height: Double

        public var isDefault: Bool

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case length

            case width

            case height

            case isDefault = "is_default"

            case unit
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.length = length

            self.width = width

            self.height = height

            self.isDefault = isDefault

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            length = try container.decode(Double.self, forKey: .length)

            width = try container.decode(Double.self, forKey: .width)

            height = try container.decode(Double.self, forKey: .height)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
