

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var name: String

        public var createdOn: String?

        public var modifiedOn: String?

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var createdBy: [String: Any]?

        public var products: [ProductBundleItem]

        public var choice: String

        public var id: String?

        public var pageVisibility: [String]?

        public var slug: String

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case meta

            case sameStoreAssignment = "same_store_assignment"

            case createdBy = "created_by"

            case products

            case choice

            case id

            case pageVisibility = "page_visibility"

            case slug

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case logo

            case isActive = "is_active"
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.name = name

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment

            self.createdBy = createdBy

            self.products = products

            self.choice = choice

            self.id = id

            self.pageVisibility = pageVisibility

            self.slug = slug

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                id = try container.decode(String.self, forKey: .id)

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

            slug = try container.decode(String.self, forKey: .slug)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetProductBundleCreateResponse
         Used By: Catalog
     */

    class GetProductBundleCreateResponse: Codable {
        public var name: String

        public var createdOn: String?

        public var modifiedOn: String?

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var createdBy: [String: Any]?

        public var products: [ProductBundleItem]

        public var choice: String

        public var id: String?

        public var pageVisibility: [String]?

        public var slug: String

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var logo: String?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case meta

            case sameStoreAssignment = "same_store_assignment"

            case createdBy = "created_by"

            case products

            case choice

            case id

            case pageVisibility = "page_visibility"

            case slug

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case logo

            case isActive = "is_active"
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.name = name

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment

            self.createdBy = createdBy

            self.products = products

            self.choice = choice

            self.id = id

            self.pageVisibility = pageVisibility

            self.slug = slug

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.logo = logo

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                id = try container.decode(String.self, forKey: .id)

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

            slug = try container.decode(String.self, forKey: .slug)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
