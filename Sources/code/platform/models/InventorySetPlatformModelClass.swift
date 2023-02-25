

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySet
         Used By: Catalog
     */

    class InventorySet: Codable {
        public var quantity: Int?

        public var name: String?

        public var sizeDistribution: SizeDistribution

        public enum CodingKeys: String, CodingKey {
            case quantity

            case name

            case sizeDistribution = "size_distribution"
        }

        public init(name: String? = nil, quantity: Int? = nil, sizeDistribution: SizeDistribution) {
            self.quantity = quantity

            self.name = name

            self.sizeDistribution = sizeDistribution
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizeDistribution = try container.decode(SizeDistribution.self, forKey: .sizeDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
        }
    }
}
