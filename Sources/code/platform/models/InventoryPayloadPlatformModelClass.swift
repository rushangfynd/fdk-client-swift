

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPayload
         Used By: Catalog
     */

    class InventoryPayload: Codable {
        public var totalQuantity: Int?

        public var tags: [String]?

        public var traceId: String?

        public var sellerIdentifier: String

        public var priceEffective: Double?

        public var expirationDate: String?

        public var priceMarked: Double?

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case totalQuantity = "total_quantity"

            case tags

            case traceId = "trace_id"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case expirationDate = "expiration_date"

            case priceMarked = "price_marked"

            case storeId = "store_id"
        }

        public init(expirationDate: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, sellerIdentifier: String, storeId: Int, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            self.totalQuantity = totalQuantity

            self.tags = tags

            self.traceId = traceId

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.expirationDate = expirationDate

            self.priceMarked = priceMarked

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(totalQuantity, forKey: .totalQuantity)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
