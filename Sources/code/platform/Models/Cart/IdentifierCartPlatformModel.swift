

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Identifier
         Used By: Cart
     */

    class Identifier: Codable {
        public var articleId: [String]?

        public var userId: [String]?

        public var storeId: [Int]?

        public var categoryId: [Int]?

        public var emailDomain: [String]?

        public var excludeBrandId: [Int]?

        public var itemId: [Int]?

        public var brandId: [Int]?

        public var companyId: [Int]?

        public var collectionId: [String]?

        public enum CodingKeys: String, CodingKey {
            case articleId = "article_id"

            case userId = "user_id"

            case storeId = "store_id"

            case categoryId = "category_id"

            case emailDomain = "email_domain"

            case excludeBrandId = "exclude_brand_id"

            case itemId = "item_id"

            case brandId = "brand_id"

            case companyId = "company_id"

            case collectionId = "collection_id"
        }

        public init(articleId: [String]? = nil, brandId: [Int]? = nil, categoryId: [Int]? = nil, collectionId: [String]? = nil, companyId: [Int]? = nil, emailDomain: [String]? = nil, excludeBrandId: [Int]? = nil, itemId: [Int]? = nil, storeId: [Int]? = nil, userId: [String]? = nil) {
            self.articleId = articleId

            self.userId = userId

            self.storeId = storeId

            self.categoryId = categoryId

            self.emailDomain = emailDomain

            self.excludeBrandId = excludeBrandId

            self.itemId = itemId

            self.brandId = brandId

            self.companyId = companyId

            self.collectionId = collectionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleId = try container.decode([String].self, forKey: .articleId)

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
                categoryId = try container.decode([Int].self, forKey: .categoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailDomain = try container.decode([String].self, forKey: .emailDomain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeBrandId = try container.decode([Int].self, forKey: .excludeBrandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

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
                companyId = try container.decode([Int].self, forKey: .companyId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(categoryId, forKey: .categoryId)

            try? container.encodeIfPresent(emailDomain, forKey: .emailDomain)

            try? container.encodeIfPresent(excludeBrandId, forKey: .excludeBrandId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
        }
    }
}
