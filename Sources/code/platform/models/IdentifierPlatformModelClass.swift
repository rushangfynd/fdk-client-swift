

import Foundation
public extension PlatformClient {
    /*
         Model: Identifier
         Used By: Cart
     */

    class Identifier: Codable {
        public var itemId: [Int]?

        public var userId: [String]?

        public var storeId: [Int]?

        public var brandId: [Int]?

        public var articleId: [String]?

        public var collectionId: [String]?

        public var categoryId: [Int]?

        public var companyId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case userId = "user_id"

            case storeId = "store_id"

            case brandId = "brand_id"

            case articleId = "article_id"

            case collectionId = "collection_id"

            case categoryId = "category_id"

            case companyId = "company_id"
        }

        public init(articleId: [String]? = nil, brandId: [Int]? = nil, categoryId: [Int]? = nil, collectionId: [String]? = nil, companyId: [Int]? = nil, itemId: [Int]? = nil, storeId: [Int]? = nil, userId: [String]? = nil) {
            self.itemId = itemId

            self.userId = userId

            self.storeId = storeId

            self.brandId = brandId

            self.articleId = articleId

            self.collectionId = collectionId

            self.categoryId = categoryId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode([Int].self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([Int].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode([String].self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectionId = try container.decode([String].self, forKey: .collectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryId = try container.decode([Int].self, forKey: .categoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode([Int].self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(collectionId, forKey: .collectionId)

            try? container.encodeIfPresent(categoryId, forKey: .categoryId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
