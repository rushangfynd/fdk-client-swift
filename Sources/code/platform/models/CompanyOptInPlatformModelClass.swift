

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedOn: Int

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public var platform: String

        public var createdOn: Int

        public var optLevel: String

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public var companyId: Int

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case enabled

            case platform

            case createdOn = "created_on"

            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.enabled = enabled

            self.platform = platform

            self.createdOn = createdOn

            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            platform = try container.decode(String.self, forKey: .platform)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
