

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var localeLanguage: [String: Any]?

        public var banners: CollectionBanner

        public var query: [CollectionQuery]?

        public var slug: String

        public var name: String

        public var sortOn: String?

        public var createdBy: UserInfo?

        public var tags: [String]?

        public var isActive: Bool?

        public var isVisible: Bool?

        public var customJson: [String: Any]?

        public var type: String

        public var priority: Int?

        public var meta: [String: Any]?

        public var logo: CollectionImage

        public var seo: SeoDetail?

        public var published: Bool?

        public var schedule: CollectionSchedule?

        public var modifiedBy: UserInfo?

        public var visibleFacetsKeys: [String]?

        public var description: String?

        public var badge: CollectionBadge?

        public var allowSort: Bool?

        public var allowFacets: Bool?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case localeLanguage = "_locale_language"

            case banners

            case query

            case slug

            case name

            case sortOn = "sort_on"

            case createdBy = "created_by"

            case tags

            case isActive = "is_active"

            case isVisible = "is_visible"

            case customJson = "_custom_json"

            case type

            case priority

            case meta

            case logo

            case seo

            case published

            case schedule = "_schedule"

            case modifiedBy = "modified_by"

            case visibleFacetsKeys = "visible_facets_keys"

            case description

            case badge

            case allowSort = "allow_sort"

            case allowFacets = "allow_facets"

            case appId = "app_id"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            self.localeLanguage = localeLanguage

            self.banners = banners

            self.query = query

            self.slug = slug

            self.name = name

            self.sortOn = sortOn

            self.createdBy = createdBy

            self.tags = tags

            self.isActive = isActive

            self.isVisible = isVisible

            self.customJson = customJson

            self.type = type

            self.priority = priority

            self.meta = meta

            self.logo = logo

            self.seo = seo

            self.published = published

            self.schedule = schedule

            self.modifiedBy = modifiedBy

            self.visibleFacetsKeys = visibleFacetsKeys

            self.description = description

            self.badge = badge

            self.allowSort = allowSort

            self.allowFacets = allowFacets

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var localeLanguage: [String: Any]?

        public var banners: CollectionBanner

        public var query: [CollectionQuery]?

        public var slug: String

        public var name: String

        public var sortOn: String?

        public var createdBy: UserInfo?

        public var tags: [String]?

        public var isActive: Bool?

        public var isVisible: Bool?

        public var customJson: [String: Any]?

        public var type: String

        public var priority: Int?

        public var meta: [String: Any]?

        public var logo: CollectionImage

        public var seo: SeoDetail?

        public var published: Bool?

        public var schedule: CollectionSchedule?

        public var modifiedBy: UserInfo?

        public var visibleFacetsKeys: [String]?

        public var description: String?

        public var badge: CollectionBadge?

        public var allowSort: Bool?

        public var allowFacets: Bool?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case localeLanguage = "_locale_language"

            case banners

            case query

            case slug

            case name

            case sortOn = "sort_on"

            case createdBy = "created_by"

            case tags

            case isActive = "is_active"

            case isVisible = "is_visible"

            case customJson = "_custom_json"

            case type

            case priority

            case meta

            case logo

            case seo

            case published

            case schedule = "_schedule"

            case modifiedBy = "modified_by"

            case visibleFacetsKeys = "visible_facets_keys"

            case description

            case badge

            case allowSort = "allow_sort"

            case allowFacets = "allow_facets"

            case appId = "app_id"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            self.localeLanguage = localeLanguage

            self.banners = banners

            self.query = query

            self.slug = slug

            self.name = name

            self.sortOn = sortOn

            self.createdBy = createdBy

            self.tags = tags

            self.isActive = isActive

            self.isVisible = isVisible

            self.customJson = customJson

            self.type = type

            self.priority = priority

            self.meta = meta

            self.logo = logo

            self.seo = seo

            self.published = published

            self.schedule = schedule

            self.modifiedBy = modifiedBy

            self.visibleFacetsKeys = visibleFacetsKeys

            self.description = description

            self.badge = badge

            self.allowSort = allowSort

            self.allowFacets = allowFacets

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
