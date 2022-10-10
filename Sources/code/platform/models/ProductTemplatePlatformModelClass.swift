

import Foundation
public extension PlatformClient {
    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var logo: String?

        public var slug: String

        public var modifiedOn: String?

        public var isExpirable: Bool

        public var tag: String?

        public var name: String?

        public var createdBy: [String: Any]?

        public var departments: [String]?

        public var isActive: Bool?

        public var createdOn: String?

        public var isArchived: Bool?

        public var modifiedBy: [String: Any]?

        public var categories: [String]?

        public var description: String?

        public var attributeSchema: [AttributeSchemaOverride]?

        public var isPhysical: Bool

        public var attributes: [String]?

        public var multiSize: Bool?

        public var sizes: [String]?

        public enum CodingKeys: String, CodingKey {
            case logo

            case slug

            case modifiedOn = "modified_on"

            case isExpirable = "is_expirable"

            case tag

            case name

            case createdBy = "created_by"

            case departments

            case isActive = "is_active"

            case createdOn = "created_on"

            case isArchived = "is_archived"

            case modifiedBy = "modified_by"

            case categories

            case description

            case attributeSchema = "attribute_schema"

            case isPhysical = "is_physical"

            case attributes

            case multiSize = "multi_size"

            case sizes
        }

        public init(attributes: [String]? = nil, attributeSchema: [AttributeSchemaOverride]? = nil, categories: [String]? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String]? = nil, description: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, multiSize: Bool? = nil, name: String? = nil, sizes: [String]? = nil, slug: String, tag: String? = nil) {
            self.logo = logo

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.isExpirable = isExpirable

            self.tag = tag

            self.name = name

            self.createdBy = createdBy

            self.departments = departments

            self.isActive = isActive

            self.createdOn = createdOn

            self.isArchived = isArchived

            self.modifiedBy = modifiedBy

            self.categories = categories

            self.description = description

            self.attributeSchema = attributeSchema

            self.isPhysical = isPhysical

            self.attributes = attributes

            self.multiSize = multiSize

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                categories = try container.decode([String].self, forKey: .categories)

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
                attributeSchema = try container.decode([AttributeSchemaOverride].self, forKey: .attributeSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributeSchema, forKey: .attributeSchema)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(sizes, forKey: .sizes)
        }
    }
}
