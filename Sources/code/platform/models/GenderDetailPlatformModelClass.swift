

import Foundation
public extension PlatformClient {
    /*
         Model: GenderDetail
         Used By: Catalog
     */

    class GenderDetail: Codable {
        public var departments: [String]?

        public var enabledForEndConsumer: Bool?

        public var id: String?

        public var slug: String?

        public var logo: String?

        public var details: AttributeMasterDetails?

        public var name: String?

        public var filters: AttributeMasterFilter?

        public var isNested: Bool?

        public var meta: AttributeMasterMeta?

        public var description: String?

        public var schema: AttributeMaster?

        public enum CodingKeys: String, CodingKey {
            case departments

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case id

            case slug

            case logo

            case details

            case name

            case filters

            case isNested = "is_nested"

            case meta

            case description

            case schema
        }

        public init(departments: [String]? = nil, description: String? = nil, details: AttributeMasterDetails? = nil, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter? = nil, id: String? = nil, isNested: Bool? = nil, logo: String? = nil, meta: AttributeMasterMeta? = nil, name: String? = nil, schema: AttributeMaster? = nil, slug: String? = nil) {
            self.departments = departments

            self.enabledForEndConsumer = enabledForEndConsumer

            self.id = id

            self.slug = slug

            self.logo = logo

            self.details = details

            self.name = name

            self.filters = filters

            self.isNested = isNested

            self.meta = meta

            self.description = description

            self.schema = schema
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

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

            do {
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)

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

            do {
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isNested = try container.decode(Bool.self, forKey: .isNested)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)

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
                schema = try container.decode(AttributeMaster.self, forKey: .schema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(schema, forKey: .schema)
        }
    }
}
