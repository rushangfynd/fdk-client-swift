

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var defaultKey: String

        public var name: String?

        public var isDefault: Bool

        public var logo: String?

        public var isActive: Bool

        public var key: String

        public var appId: String

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case defaultKey = "default_key"

            case name

            case isDefault = "is_default"

            case logo

            case isActive = "is_active"

            case key

            case appId = "app_id"

            case priority
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.defaultKey = defaultKey

            self.name = name

            self.isDefault = isDefault

            self.logo = logo

            self.isActive = isActive

            self.key = key

            self.appId = appId

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)

            appId = try container.decode(String.self, forKey: .appId)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfigurationsSort
         Used By: Catalog
     */

    class AppConfigurationsSort: Codable {
        public var defaultKey: String

        public var name: String?

        public var isDefault: Bool

        public var logo: String?

        public var isActive: Bool

        public var key: String

        public var appId: String

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case defaultKey = "default_key"

            case name

            case isDefault = "is_default"

            case logo

            case isActive = "is_active"

            case key

            case appId = "app_id"

            case priority
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.defaultKey = defaultKey

            self.name = name

            self.isDefault = isDefault

            self.logo = logo

            self.isActive = isActive

            self.key = key

            self.appId = appId

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            defaultKey = try container.decode(String.self, forKey: .defaultKey)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)

            appId = try container.decode(String.self, forKey: .appId)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
