

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var id: String?

        public var tag: String?

        public var description: String?

        public var isArchived: Bool?

        public var isPhysical: Bool

        public var name: String?

        public var isActive: Bool?

        public var logo: String?

        public var isExpirable: Bool

        public var departments: [String]?

        public var attributes: [String]?

        public var slug: String

        public var categories: [String]?

        public enum CodingKeys: String, CodingKey {
            case id

            case tag

            case description

            case isArchived = "is_archived"

            case isPhysical = "is_physical"

            case name

            case isActive = "is_active"

            case logo

            case isExpirable = "is_expirable"

            case departments

            case attributes

            case slug

            case categories
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.id = id

            self.tag = tag

            self.description = description

            self.isArchived = isArchived

            self.isPhysical = isPhysical

            self.name = name

            self.isActive = isActive

            self.logo = logo

            self.isExpirable = isExpirable

            self.departments = departments

            self.attributes = attributes

            self.slug = slug

            self.categories = categories
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                description = try container.decode(String.self, forKey: .description)

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encode(departments, forKey: .departments)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(categories, forKey: .categories)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var id: String?

        public var tag: String?

        public var description: String?

        public var isArchived: Bool?

        public var isPhysical: Bool

        public var name: String?

        public var isActive: Bool?

        public var logo: String?

        public var isExpirable: Bool

        public var departments: [String]?

        public var attributes: [String]?

        public var slug: String

        public var categories: [String]?

        public enum CodingKeys: String, CodingKey {
            case id

            case tag

            case description

            case isArchived = "is_archived"

            case isPhysical = "is_physical"

            case name

            case isActive = "is_active"

            case logo

            case isExpirable = "is_expirable"

            case departments

            case attributes

            case slug

            case categories
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.id = id

            self.tag = tag

            self.description = description

            self.isArchived = isArchived

            self.isPhysical = isPhysical

            self.name = name

            self.isActive = isActive

            self.logo = logo

            self.isExpirable = isExpirable

            self.departments = departments

            self.attributes = attributes

            self.slug = slug

            self.categories = categories
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                description = try container.decode(String.self, forKey: .description)

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encode(departments, forKey: .departments)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encode(categories, forKey: .categories)
        }
    }
}
