

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPayload
         Used By: Catalog
     */

    class InventoryPayload: Codable {
        public var storeId: Int

        public var priceMarked: Double

        public var expirationDate: String?

        public var totalQuantity: Int

        public var priceEffective: Double

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case priceMarked = "price_marked"

            case expirationDate = "expiration_date"

            case totalQuantity = "total_quantity"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"
        }

        public init(expirationDate: String? = nil, priceEffective: Double, priceMarked: Double, sellerIdentifier: String, storeId: Int, totalQuantity: Int) {
            self.storeId = storeId

            self.priceMarked = priceMarked

            self.expirationDate = expirationDate

            self.totalQuantity = totalQuantity

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
