

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var localeLanguage: [String: Any]?

        public var banners: CollectionBanner

        public var allowSort: Bool?

        public var isActive: Bool?

        public var priority: Int?

        public var meta: [String: Any]?

        public var description: String?

        public var badge: CollectionBadge?

        public var appId: String

        public var customJson: [String: Any]?

        public var published: Bool?

        public var isVisible: Bool?

        public var type: String

        public var seo: SeoDetail?

        public var slug: String

        public var query: [CollectionQuery]?

        public var schedule: CollectionSchedule?

        public var modifiedBy: UserInfo?

        public var tags: [String]?

        public var name: String

        public var logo: CollectionImage

        public var createdBy: UserInfo?

        public var sortOn: String?

        public var allowFacets: Bool?

        public var visibleFacetsKeys: [String]?

        public enum CodingKeys: String, CodingKey {
            case localeLanguage = "_locale_language"

            case banners

            case allowSort = "allow_sort"

            case isActive = "is_active"

            case priority

            case meta

            case description

            case badge

            case appId = "app_id"

            case customJson = "_custom_json"

            case published

            case isVisible = "is_visible"

            case type

            case seo

            case slug

            case query

            case schedule = "_schedule"

            case modifiedBy = "modified_by"

            case tags

            case name

            case logo

            case createdBy = "created_by"

            case sortOn = "sort_on"

            case allowFacets = "allow_facets"

            case visibleFacetsKeys = "visible_facets_keys"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            self.localeLanguage = localeLanguage

            self.banners = banners

            self.allowSort = allowSort

            self.isActive = isActive

            self.priority = priority

            self.meta = meta

            self.description = description

            self.badge = badge

            self.appId = appId

            self.customJson = customJson

            self.published = published

            self.isVisible = isVisible

            self.type = type

            self.seo = seo

            self.slug = slug

            self.query = query

            self.schedule = schedule

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.name = name

            self.logo = logo

            self.createdBy = createdBy

            self.sortOn = sortOn

            self.allowFacets = allowFacets

            self.visibleFacetsKeys = visibleFacetsKeys
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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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

            appId = try container.decode(String.self, forKey: .appId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
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

        public var allowSort: Bool?

        public var isActive: Bool?

        public var priority: Int?

        public var meta: [String: Any]?

        public var description: String?

        public var badge: CollectionBadge?

        public var appId: String

        public var customJson: [String: Any]?

        public var published: Bool?

        public var isVisible: Bool?

        public var type: String

        public var seo: SeoDetail?

        public var slug: String

        public var query: [CollectionQuery]?

        public var schedule: CollectionSchedule?

        public var modifiedBy: UserInfo?

        public var tags: [String]?

        public var name: String

        public var logo: CollectionImage

        public var createdBy: UserInfo?

        public var sortOn: String?

        public var allowFacets: Bool?

        public var visibleFacetsKeys: [String]?

        public enum CodingKeys: String, CodingKey {
            case localeLanguage = "_locale_language"

            case banners

            case allowSort = "allow_sort"

            case isActive = "is_active"

            case priority

            case meta

            case description

            case badge

            case appId = "app_id"

            case customJson = "_custom_json"

            case published

            case isVisible = "is_visible"

            case type

            case seo

            case slug

            case query

            case schedule = "_schedule"

            case modifiedBy = "modified_by"

            case tags

            case name

            case logo

            case createdBy = "created_by"

            case sortOn = "sort_on"

            case allowFacets = "allow_facets"

            case visibleFacetsKeys = "visible_facets_keys"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            self.localeLanguage = localeLanguage

            self.banners = banners

            self.allowSort = allowSort

            self.isActive = isActive

            self.priority = priority

            self.meta = meta

            self.description = description

            self.badge = badge

            self.appId = appId

            self.customJson = customJson

            self.published = published

            self.isVisible = isVisible

            self.type = type

            self.seo = seo

            self.slug = slug

            self.query = query

            self.schedule = schedule

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.name = name

            self.logo = logo

            self.createdBy = createdBy

            self.sortOn = sortOn

            self.allowFacets = allowFacets

            self.visibleFacetsKeys = visibleFacetsKeys
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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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

            appId = try container.decode(String.self, forKey: .appId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        }
    }
}
