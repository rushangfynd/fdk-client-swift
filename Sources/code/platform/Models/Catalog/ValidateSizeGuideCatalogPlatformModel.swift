

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ValidateSizeGuide
         Used By: Catalog
     */

    class ValidateSizeGuide: Codable {
        public var modifiedBy: [String: Any]?

        public var id: String?

        public var subtitle: String?

        public var active: Bool?

        public var name: String

        public var title: String

        public var brandId: Int?

        public var guide: Guide?

        public var createdBy: [String: Any]?

        public var tag: String?

        public var createdOn: String?

        public var companyId: Int?

        public var modifiedOn: String?

        public var description: String?

        public var image: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case id

            case subtitle

            case active

            case name

            case title

            case brandId = "brand_id"

            case guide

            case createdBy = "created_by"

            case tag

            case createdOn = "created_on"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case description

            case image
        }

        public init(active: Bool? = nil, brandId: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String? = nil, guide: Guide? = nil, id: String? = nil, image: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, subtitle: String? = nil, tag: String? = nil, title: String) {
            self.modifiedBy = modifiedBy

            self.id = id

            self.subtitle = subtitle

            self.active = active

            self.name = name

            self.title = title

            self.brandId = brandId

            self.guide = guide

            self.createdBy = createdBy

            self.tag = tag

            self.createdOn = createdOn

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.description = description

            self.image = image
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            title = try container.decode(String.self, forKey: .title)

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

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
                tag = try container.decode(String.self, forKey: .tag)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(image, forKey: .image)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ValidateSizeGuide
         Used By: Catalog
     */

    class ValidateSizeGuide: Codable {
        public var modifiedBy: [String: Any]?

        public var id: String?

        public var subtitle: String?

        public var active: Bool?

        public var name: String

        public var title: String

        public var brandId: Int?

        public var guide: Guide?

        public var createdBy: [String: Any]?

        public var tag: String?

        public var createdOn: String?

        public var companyId: Int?

        public var modifiedOn: String?

        public var description: String?

        public var image: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case id

            case subtitle

            case active

            case name

            case title

            case brandId = "brand_id"

            case guide

            case createdBy = "created_by"

            case tag

            case createdOn = "created_on"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case description

            case image
        }

        public init(active: Bool? = nil, brandId: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String? = nil, guide: Guide? = nil, id: String? = nil, image: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, subtitle: String? = nil, tag: String? = nil, title: String) {
            self.modifiedBy = modifiedBy

            self.id = id

            self.subtitle = subtitle

            self.active = active

            self.name = name

            self.title = title

            self.brandId = brandId

            self.guide = guide

            self.createdBy = createdBy

            self.tag = tag

            self.createdOn = createdOn

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.description = description

            self.image = image
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            title = try container.decode(String.self, forKey: .title)

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

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
                tag = try container.decode(String.self, forKey: .tag)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(image, forKey: .image)
        }
    }
}
