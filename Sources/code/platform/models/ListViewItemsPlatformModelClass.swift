

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var slug: String

        public var name: String

        public var isActive: Bool

        public var channels: ListViewChannels

        public var zoneId: String

        public var companyId: Int

        public var product: ListViewProduct

        public var pincodesCount: Int

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case slug

            case name

            case isActive = "is_active"

            case channels

            case zoneId = "zone_id"

            case companyId = "company_id"

            case product

            case pincodesCount = "pincodes_count"

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.channels = channels

            self.zoneId = zoneId

            self.companyId = companyId

            self.product = product

            self.pincodesCount = pincodesCount

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
