

import Foundation
public extension PlatformClient {
    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var id: String?

        public var createdOn: String?

        public var appId: String

        public var configType: String

        public var type: String?

        public var modifiedOn: String?

        public var modifiedBy: [String: Any]?

        public var configId: String?

        public var listing: ConfigurationListing?

        public var createdBy: [String: Any]?

        public var product: ConfigurationProduct?

        public enum CodingKeys: String, CodingKey {
            case id

            case createdOn = "created_on"

            case appId = "app_id"

            case configType = "config_type"

            case type

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case configId = "config_id"

            case listing

            case createdBy = "created_by"

            case product
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.id = id

            self.createdOn = createdOn

            self.appId = appId

            self.configType = configType

            self.type = type

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.configId = configId

            self.listing = listing

            self.createdBy = createdBy

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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

            appId = try container.decode(String.self, forKey: .appId)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

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
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
