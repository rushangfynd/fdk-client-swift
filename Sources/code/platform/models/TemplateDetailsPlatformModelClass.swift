

import Foundation
public extension PlatformClient {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var isPhysical: Bool

        public var categories: [String]?

        public var slug: String

        public var isExpirable: Bool

        public var description: String?

        public var logo: String?

        public var tag: String?

        public var name: String?

        public var attributes: [String]?

        public var isArchived: Bool?

        public var departments: [String]?

        public var id: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case isPhysical = "is_physical"

            case categories

            case slug

            case isExpirable = "is_expirable"

            case description

            case logo

            case tag

            case name

            case attributes

            case isArchived = "is_archived"

            case departments

            case id

            case isActive = "is_active"
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.isPhysical = isPhysical

            self.categories = categories

            self.slug = slug

            self.isExpirable = isExpirable

            self.description = description

            self.logo = logo

            self.tag = tag

            self.name = name

            self.attributes = attributes

            self.isArchived = isArchived

            self.departments = departments

            self.id = id

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                attributes = try container.decode([String].self, forKey: .attributes)

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
                departments = try container.decode([String].self, forKey: .departments)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
