

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var reportingHsn: String

        public var hsnCodeId: String?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var hsnCode: String

        public var type: String

        public var description: String

        public var countryCode: String

        public var taxes: [TaxSlab]

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case reportingHsn = "reporting_hsn"

            case hsnCodeId = "hsn_code_id"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case hsnCode = "hsn_code"

            case type

            case description

            case countryCode = "country_code"

            case taxes

            case modifiedOn = "modified_on"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.reportingHsn = reportingHsn

            self.hsnCodeId = hsnCodeId

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.hsnCode = hsnCode

            self.type = type

            self.description = description

            self.countryCode = countryCode

            self.taxes = taxes

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            type = try container.decode(String.self, forKey: .type)

            description = try container.decode(String.self, forKey: .description)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var reportingHsn: String

        public var hsnCodeId: String?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var hsnCode: String

        public var type: String

        public var description: String

        public var countryCode: String

        public var taxes: [TaxSlab]

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case reportingHsn = "reporting_hsn"

            case hsnCodeId = "hsn_code_id"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case hsnCode = "hsn_code"

            case type

            case description

            case countryCode = "country_code"

            case taxes

            case modifiedOn = "modified_on"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.reportingHsn = reportingHsn

            self.hsnCodeId = hsnCodeId

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.hsnCode = hsnCode

            self.type = type

            self.description = description

            self.countryCode = countryCode

            self.taxes = taxes

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            type = try container.decode(String.self, forKey: .type)

            description = try container.decode(String.self, forKey: .description)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
