

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var status: Bool

        public var quantity: Int

        public var articleAssignment: ArticleAssignment1

        public var strategyWiseListing: [[String: Any]]?

        public var index: Int?

        public var sCity: String?

        public var storeId: Int?

        public var id: String?

        public var companyId: Int?

        public var uid: String?

        public var itemId: Int

        public var priceEffective: Int?

        public var groupId: String?

        public var priceMarked: Int?

        public var meta: [String: Any]?

        public var size: String

        public var storePincode: Int?

        public enum CodingKeys: String, CodingKey {
            case status

            case quantity

            case articleAssignment = "article_assignment"

            case strategyWiseListing = "strategy_wise_listing"

            case index

            case sCity = "s_city"

            case storeId = "store_id"

            case id = "_id"

            case companyId = "company_id"

            case uid

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case groupId = "group_id"

            case priceMarked = "price_marked"

            case meta

            case size

            case storePincode = "store_pincode"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.status = status

            self.quantity = quantity

            self.articleAssignment = articleAssignment

            self.strategyWiseListing = strategyWiseListing

            self.index = index

            self.sCity = sCity

            self.storeId = storeId

            self.id = id

            self.companyId = companyId

            self.uid = uid

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.groupId = groupId

            self.priceMarked = priceMarked

            self.meta = meta

            self.size = size

            self.storePincode = storePincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            quantity = try container.decode(Int.self, forKey: .quantity)

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)
        }
    }
}
