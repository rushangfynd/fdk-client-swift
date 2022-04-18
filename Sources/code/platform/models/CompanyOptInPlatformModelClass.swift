import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedBy: [String: Any]?

        public var brandIds: [Int]

        public var createdBy: [String: Any]?

        public var companyId: Int

        public var createdOn: Int

        public var platform: String

        public var storeIds: [Int]

        public var modifiedOn: Int

        public var optLevel: String

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case brandIds = "brand_ids"

            case createdBy = "created_by"

            case companyId = "company_id"

            case createdOn = "created_on"

            case platform

            case storeIds = "store_ids"

            case modifiedOn = "modified_on"

            case optLevel = "opt_level"

            case enabled
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedBy = modifiedBy

            self.brandIds = brandIds

            self.createdBy = createdBy

            self.companyId = companyId

            self.createdOn = createdOn

            self.platform = platform

            self.storeIds = storeIds

            self.modifiedOn = modifiedOn

            self.optLevel = optLevel

            self.enabled = enabled
        }

        public func duplicate() -> CompanyOptIn {
            let dict = self.dictionary!
            let copy = CompanyOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}