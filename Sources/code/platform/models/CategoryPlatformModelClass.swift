

import Foundation
public extension PlatformClient {
    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var name: String

        public var modifiedOn: String?

        public var modifiedBy: [String: Any]?

        public var level: Int

        public var isActive: Bool

        public var media: Media2?

        public var slug: String?

        public var tryouts: [String]?

        public var createdOn: String?

        public var id: String?

        public var departments: [Int]

        public var uid: Int?

        public var marketplaces: CategoryMapping?

        public var createdBy: [String: Any]?

        public var synonyms: [String]?

        public var hierarchy: [Hierarchy]?

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case level

            case isActive = "is_active"

            case media

            case slug

            case tryouts

            case createdOn = "created_on"

            case id

            case departments

            case uid

            case marketplaces

            case createdBy = "created_by"

            case synonyms

            case hierarchy

            case priority
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            self.name = name

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.level = level

            self.isActive = isActive

            self.media = media

            self.slug = slug

            self.tryouts = tryouts

            self.createdOn = createdOn

            self.id = id

            self.departments = departments

            self.uid = uid

            self.marketplaces = marketplaces

            self.createdBy = createdBy

            self.synonyms = synonyms

            self.hierarchy = hierarchy

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

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

            level = try container.decode(Int.self, forKey: .level)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                media = try container.decode(Media2.self, forKey: .media)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

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
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
