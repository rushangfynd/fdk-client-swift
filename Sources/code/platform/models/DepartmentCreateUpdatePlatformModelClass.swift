

import Foundation
public extension PlatformClient {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var cls: String?

        public var synonyms: [String]?

        public var priorityOrder: Int

        public var uid: Int?

        public var platforms: [String: Any]?

        public var slug: String?

        public var customJson: [String: Any]?

        public var name: String

        public var isActive: Bool?

        public var tags: [String]?

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case cls = "_cls"

            case synonyms

            case priorityOrder = "priority_order"

            case uid

            case platforms

            case slug

            case customJson = "_custom_json"

            case name

            case isActive = "is_active"

            case tags

            case logo
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.cls = cls

            self.synonyms = synonyms

            self.priorityOrder = priorityOrder

            self.uid = uid

            self.platforms = platforms

            self.slug = slug

            self.customJson = customJson

            self.name = name

            self.isActive = isActive

            self.tags = tags

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
