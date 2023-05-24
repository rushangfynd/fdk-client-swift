

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: NetQuantity
         Used By: Cart
     */

    class NetQuantity: Codable {
        public var unit: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case unit

            case value
        }

        public init(unit: String? = nil, value: String? = nil) {
            self.unit = unit

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}