

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportAdvanceOption
         Used By: Catalog
     */

    class InventoryExportAdvanceOption: Codable {
        public var quantity: InventoryExportQuantityFilter?

        public var toDate: String?

        public var fromDate: String?

        public var brandIds: [Int]?

        public var notification: Bool?

        public var storeIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case toDate = "to_date"

            case fromDate = "from_date"

            case brandIds = "brand_ids"

            case notification

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]? = nil, fromDate: String? = nil, notification: Bool? = nil, quantity: InventoryExportQuantityFilter? = nil, storeIds: [Int]? = nil, toDate: String? = nil) {
            self.quantity = quantity

            self.toDate = toDate

            self.fromDate = fromDate

            self.brandIds = brandIds

            self.notification = notification

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notification = try container.decode(Bool.self, forKey: .notification)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(toDate, forKey: .toDate)

            try? container.encode(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(notification, forKey: .notification)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
