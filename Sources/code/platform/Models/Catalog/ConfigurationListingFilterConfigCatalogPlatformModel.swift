

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var isActive: Bool

        public var displayName: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var type: String

        public var name: String?

        public var key: String

        public var priority: Int

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case displayName = "display_name"

            case valueConfig = "value_config"

            case type

            case name

            case key

            case priority

            case logo
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            self.isActive = isActive

            self.displayName = displayName

            self.valueConfig = valueConfig

            self.type = type

            self.name = name

            self.key = key

            self.priority = priority

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var isActive: Bool

        public var displayName: String?

        public var valueConfig: ConfigurationListingFilterValue?

        public var type: String

        public var name: String?

        public var key: String

        public var priority: Int

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case displayName = "display_name"

            case valueConfig = "value_config"

            case type

            case name

            case key

            case priority

            case logo
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            self.isActive = isActive

            self.displayName = displayName

            self.valueConfig = valueConfig

            self.type = type

            self.name = name

            self.key = key

            self.priority = priority

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
