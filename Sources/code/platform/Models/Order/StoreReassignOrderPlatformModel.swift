

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var fyndOrderId: String?

        public var setId: String?

        public var storeId: Int

        public var itemId: String?

        public var bagId: Int?

        public var reasonIds: [Int]?

        public var affiliateId: String?

        public var affiliateBagId: String?

        public var affiliateOrderId: String?

        public var mongoArticleId: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case setId = "set_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case bagId = "bag_id"

            case reasonIds = "reason_ids"

            case affiliateId = "affiliate_id"

            case affiliateBagId = "affiliate_bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case mongoArticleId = "mongo_article_id"
        }

        public init(affiliateBagId: String? = nil, affiliateId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, fyndOrderId: String? = nil, itemId: String? = nil, mongoArticleId: String? = nil, reasonIds: [Int]? = nil, setId: String? = nil, storeId: Int) {
            self.fyndOrderId = fyndOrderId

            self.setId = setId

            self.storeId = storeId

            self.itemId = itemId

            self.bagId = bagId

            self.reasonIds = reasonIds

            self.affiliateId = affiliateId

            self.affiliateBagId = affiliateBagId

            self.affiliateOrderId = affiliateOrderId

            self.mongoArticleId = mongoArticleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                setId = try container.decode(String.self, forKey: .setId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(setId, forKey: .setId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(reasonIds, forKey: .reasonIds)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var fyndOrderId: String?

        public var setId: String?

        public var storeId: Int

        public var itemId: String?

        public var bagId: Int?

        public var reasonIds: [Int]?

        public var affiliateId: String?

        public var affiliateBagId: String?

        public var affiliateOrderId: String?

        public var mongoArticleId: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case setId = "set_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case bagId = "bag_id"

            case reasonIds = "reason_ids"

            case affiliateId = "affiliate_id"

            case affiliateBagId = "affiliate_bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case mongoArticleId = "mongo_article_id"
        }

        public init(affiliateBagId: String? = nil, affiliateId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, fyndOrderId: String? = nil, itemId: String? = nil, mongoArticleId: String? = nil, reasonIds: [Int]? = nil, setId: String? = nil, storeId: Int) {
            self.fyndOrderId = fyndOrderId

            self.setId = setId

            self.storeId = storeId

            self.itemId = itemId

            self.bagId = bagId

            self.reasonIds = reasonIds

            self.affiliateId = affiliateId

            self.affiliateBagId = affiliateBagId

            self.affiliateOrderId = affiliateOrderId

            self.mongoArticleId = mongoArticleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                setId = try container.decode(String.self, forKey: .setId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(setId, forKey: .setId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(reasonIds, forKey: .reasonIds)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)
        }
    }
}