

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var storeIds: [Int]

        public var modifiedBy: [String: Any]?

        public var optLevel: String

        public var platform: String

        public var enabled: Bool

        public var createdOn: Int

        public var brandIds: [Int]

        public var createdBy: [String: Any]?

        public var modifiedOn: Int

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case modifiedBy = "modified_by"

            case optLevel = "opt_level"

            case platform

            case enabled

            case createdOn = "created_on"

            case brandIds = "brand_ids"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.storeIds = storeIds

            self.modifiedBy = modifiedBy

            self.optLevel = optLevel

            self.platform = platform

            self.enabled = enabled

            self.createdOn = createdOn

            self.brandIds = brandIds

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            platform = try container.decode(String.self, forKey: .platform)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
