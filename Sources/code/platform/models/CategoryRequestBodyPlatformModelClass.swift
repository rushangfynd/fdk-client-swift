import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var hierarchy: [Hierarchy]?

        public var priority: Int?

        public var isActive: Bool

        public var departments: [Int]

        public var name: String

        public var tryouts: [String]?

        public var media: Media2?

        public var marketplaces: CategoryMapping?

        public var slug: String?

        public var synonyms: [String]?

        public var level: Int

        public enum CodingKeys: String, CodingKey {
            case hierarchy

            case priority

            case isActive = "is_active"

            case departments

            case name

            case tryouts

            case media

            case marketplaces

            case slug

            case synonyms

            case level
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            self.hierarchy = hierarchy

            self.priority = priority

            self.isActive = isActive

            self.departments = departments

            self.name = name

            self.tryouts = tryouts

            self.media = media

            self.marketplaces = marketplaces

            self.slug = slug

            self.synonyms = synonyms

            self.level = level
        }

        public func duplicate() -> CategoryRequestBody {
            let dict = self.dictionary!
            let copy = CategoryRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            departments = try container.decode([Int].self, forKey: .departments)

            name = try container.decode(String.self, forKey: .name)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(Media2.self, forKey: .media)

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
                slug = try container.decode(String.self, forKey: .slug)

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

            level = try container.decode(Int.self, forKey: .level)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }
}