

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var isDefault: Bool

        public var slug: String

        public var isActive: Bool

        public var templateSlugs: [String]?

        public var attributes: [AttributeDetailsGroup]?

        public var name: String?

        public var priority: Int

        public var logo: String?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case slug

            case isActive = "is_active"

            case templateSlugs = "template_slugs"

            case attributes

            case name

            case priority

            case logo

            case appId = "app_id"
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.isDefault = isDefault

            self.slug = slug

            self.isActive = isActive

            self.templateSlugs = templateSlugs

            self.attributes = attributes

            self.name = name

            self.priority = priority

            self.logo = logo

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                templateSlugs = try container.decode([String].self, forKey: .templateSlugs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

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

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var isDefault: Bool

        public var slug: String

        public var isActive: Bool

        public var templateSlugs: [String]?

        public var attributes: [AttributeDetailsGroup]?

        public var name: String?

        public var priority: Int

        public var logo: String?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case slug

            case isActive = "is_active"

            case templateSlugs = "template_slugs"

            case attributes

            case name

            case priority

            case logo

            case appId = "app_id"
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.isDefault = isDefault

            self.slug = slug

            self.isActive = isActive

            self.templateSlugs = templateSlugs

            self.attributes = attributes

            self.name = name

            self.priority = priority

            self.logo = logo

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                templateSlugs = try container.decode([String].self, forKey: .templateSlugs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

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

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
