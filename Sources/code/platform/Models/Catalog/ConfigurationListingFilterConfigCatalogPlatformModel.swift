

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var key: String

        public var displayName: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var logo: String?

        public var isActive: Bool

        public var type: String

        public var name: String?

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case key

            case displayName = "display_name"

            case valueConfig = "value_config"

            case logo

            case isActive = "is_active"

            case type

            case name

            case priority
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            self.key = key

            self.displayName = displayName

            self.valueConfig = valueConfig

            self.logo = logo

            self.isActive = isActive

            self.type = type

            self.name = name

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            type = try container.decode(String.self, forKey: .type)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var key: String

        public var displayName: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var logo: String?

        public var isActive: Bool

        public var type: String

        public var name: String?

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case key

            case displayName = "display_name"

            case valueConfig = "value_config"

            case logo

            case isActive = "is_active"

            case type

            case name

            case priority
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            self.key = key

            self.displayName = displayName

            self.valueConfig = valueConfig

            self.logo = logo

            self.isActive = isActive

            self.type = type

            self.name = name

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            type = try container.decode(String.self, forKey: .type)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}