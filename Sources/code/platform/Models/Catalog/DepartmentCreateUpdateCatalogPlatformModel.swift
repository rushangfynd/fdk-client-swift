

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var logo: String

        public var isActive: Bool?

        public var platforms: [String: Any]?

        public var slug: String?

        public var cls: String?

        public var name: String

        public var synonyms: [String]?

        public var tags: [String]?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var priorityOrder: Int

        public enum CodingKeys: String, CodingKey {
            case logo

            case isActive = "is_active"

            case platforms

            case slug

            case cls = "_cls"

            case name

            case synonyms

            case tags

            case uid

            case customJson = "_custom_json"

            case priorityOrder = "priority_order"
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.logo = logo

            self.isActive = isActive

            self.platforms = platforms

            self.slug = slug

            self.cls = cls

            self.name = name

            self.synonyms = synonyms

            self.tags = tags

            self.uid = uid

            self.customJson = customJson

            self.priorityOrder = priorityOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var logo: String

        public var isActive: Bool?

        public var platforms: [String: Any]?

        public var slug: String?

        public var cls: String?

        public var name: String

        public var synonyms: [String]?

        public var tags: [String]?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var priorityOrder: Int

        public enum CodingKeys: String, CodingKey {
            case logo

            case isActive = "is_active"

            case platforms

            case slug

            case cls = "_cls"

            case name

            case synonyms

            case tags

            case uid

            case customJson = "_custom_json"

            case priorityOrder = "priority_order"
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.logo = logo

            self.isActive = isActive

            self.platforms = platforms

            self.slug = slug

            self.cls = cls

            self.name = name

            self.synonyms = synonyms

            self.tags = tags

            self.uid = uid

            self.customJson = customJson

            self.priorityOrder = priorityOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        }
    }
}
