

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var name: String

        public var choice: String

        public var companyId: Int?

        public var isActive: Bool

        public var modifiedOn: String?

        public var modifiedBy: [String: Any]?

        public var products: [ProductBundleItem]

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var slug: String

        public var logo: String?

        public var pageVisibility: [String]?

        public enum CodingKeys: String, CodingKey {
            case name

            case choice

            case companyId = "company_id"

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case products

            case meta

            case sameStoreAssignment = "same_store_assignment"

            case slug

            case logo

            case pageVisibility = "page_visibility"
        }

        public init(choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.name = name

            self.choice = choice

            self.companyId = companyId

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.products = products

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment

            self.slug = slug

            self.logo = logo

            self.pageVisibility = pageVisibility
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
        }
    }
}
