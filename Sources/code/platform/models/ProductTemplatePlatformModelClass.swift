

import Foundation
public extension PlatformClient {
    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var isPhysical: Bool

        public var tag: String?

        public var isArchived: Bool?

        public var createdBy: [String: Any]?

        public var departments: [String]?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var isActive: Bool?

        public var modifiedOn: String?

        public var slug: String

        public var name: String?

        public var attributes: [String]?

        public var description: String?

        public var categories: [String]?

        public var isExpirable: Bool

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case isPhysical = "is_physical"

            case tag

            case isArchived = "is_archived"

            case createdBy = "created_by"

            case departments

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case slug

            case name

            case attributes

            case description

            case categories

            case isExpirable = "is_expirable"

            case logo
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String]? = nil, description: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.isPhysical = isPhysical

            self.tag = tag

            self.isArchived = isArchived

            self.createdBy = createdBy

            self.departments = departments

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.slug = slug

            self.name = name

            self.attributes = attributes

            self.description = description

            self.categories = categories

            self.isExpirable = isExpirable

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
