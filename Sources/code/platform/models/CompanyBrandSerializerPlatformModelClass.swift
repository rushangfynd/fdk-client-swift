import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandSerializer: Codable {
        public var uid: Int?

        public var createdOn: String?

        public var modifiedBy: UserSerializer1?

        public var createdBy: UserSerializer1?

        public var verifiedOn: String?

        public var modifiedOn: String?

        public var rejectReason: String?

        public var stage: String?

        public var verifiedBy: UserSerializer1?

        public var company: GetCompanySerializer?

        public var warnings: [String: Any]?

        public var brand: GetBrandResponseSerializer?

        public enum CodingKeys: String, CodingKey {
            case uid

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case verifiedOn = "verified_on"

            case modifiedOn = "modified_on"

            case rejectReason = "reject_reason"

            case stage

            case verifiedBy = "verified_by"

            case company

            case warnings

            case brand
        }

        public init(brand: GetBrandResponseSerializer? = nil, company: GetCompanySerializer? = nil, createdBy: UserSerializer1? = nil, createdOn: String? = nil, modifiedBy: UserSerializer1? = nil, modifiedOn: String? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, verifiedBy: UserSerializer1? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil) {
            self.uid = uid

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.verifiedOn = verifiedOn

            self.modifiedOn = modifiedOn

            self.rejectReason = rejectReason

            self.stage = stage

            self.verifiedBy = verifiedBy

            self.company = company

            self.warnings = warnings

            self.brand = brand
        }

        public func duplicate() -> CompanyBrandSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(GetBrandResponseSerializer.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}