

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var choice: String

        public var pageVisibility: [String]?

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var products: [ProductBundleItem]

        public var meta: [String: Any]?

        public var logo: String?

        public var name: String

        public var slug: String

        public var sameStoreAssignment: Bool?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case choice

            case pageVisibility = "page_visibility"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case products

            case meta

            case logo

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case isActive = "is_active"
        }

        public init(choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.choice = choice

            self.pageVisibility = pageVisibility

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.products = products

            self.meta = meta

            self.logo = logo

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var choice: String

        public var pageVisibility: [String]?

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var products: [ProductBundleItem]

        public var meta: [String: Any]?

        public var logo: String?

        public var name: String

        public var slug: String

        public var sameStoreAssignment: Bool?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case choice

            case pageVisibility = "page_visibility"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case products

            case meta

            case logo

            case name

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case isActive = "is_active"
        }

        public init(choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.choice = choice

            self.pageVisibility = pageVisibility

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.products = products

            self.meta = meta

            self.logo = logo

            self.name = name

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
