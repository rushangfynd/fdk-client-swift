

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var companyId: Int

        public var storeIds: [Int]

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var platform: String

        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case companyId = "company_id"

            case storeIds = "store_ids"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case platform

            case enabled

            case modifiedBy = "modified_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.companyId = companyId

            self.storeIds = storeIds

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.platform = platform

            self.enabled = enabled

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            platform = try container.decode(String.self, forKey: .platform)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var companyId: Int

        public var storeIds: [Int]

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var platform: String

        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case companyId = "company_id"

            case storeIds = "store_ids"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case platform

            case enabled

            case modifiedBy = "modified_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.companyId = companyId

            self.storeIds = storeIds

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.platform = platform

            self.enabled = enabled

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            platform = try container.decode(String.self, forKey: .platform)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}