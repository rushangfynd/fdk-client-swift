

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var stage: String?

        public var verifiedBy: UserSerializer?

        public var uid: Int

        public var contactDetails: ContactDetails?

        public var modifiedOn: String?

        public var businessDetails: BusinessDetails?

        public var createdOn: String?

        public var businessCountryInfo: BusinessCountryInfo?

        public var documents: [Document]?

        public var addresses: [GetAddressSerializer]?

        public var businessType: String?

        public var modifiedBy: UserSerializer?

        public var companyType: String

        public var name: String?

        public var taxes: [CompanyTaxesSerializer]?

        public var createdBy: UserSerializer?

        public var businessInfo: String?

        public var customJson: [String: Any]?

        public var mode: String?

        public var warnings: [String: Any]?

        public var verifiedOn: String?

        public var notificationEmails: [String]?

        public var franchiseEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case stage

            case verifiedBy = "verified_by"

            case uid

            case contactDetails = "contact_details"

            case modifiedOn = "modified_on"

            case businessDetails = "business_details"

            case createdOn = "created_on"

            case businessCountryInfo = "business_country_info"

            case documents

            case addresses

            case businessType = "business_type"

            case modifiedBy = "modified_by"

            case companyType = "company_type"

            case name

            case taxes

            case createdBy = "created_by"

            case businessInfo = "business_info"

            case customJson = "_custom_json"

            case mode

            case warnings

            case verifiedOn = "verified_on"

            case notificationEmails = "notification_emails"

            case franchiseEnabled = "franchise_enabled"
        }

        public init(addresses: [GetAddressSerializer]? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String? = nil, companyType: String, contactDetails: ContactDetails? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, stage: String? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.verifiedBy = verifiedBy

            self.uid = uid

            self.contactDetails = contactDetails

            self.modifiedOn = modifiedOn

            self.businessDetails = businessDetails

            self.createdOn = createdOn

            self.businessCountryInfo = businessCountryInfo

            self.documents = documents

            self.addresses = addresses

            self.businessType = businessType

            self.modifiedBy = modifiedBy

            self.companyType = companyType

            self.name = name

            self.taxes = taxes

            self.createdBy = createdBy

            self.businessInfo = businessInfo

            self.customJson = customJson

            self.mode = mode

            self.warnings = warnings

            self.verifiedOn = verifiedOn

            self.notificationEmails = notificationEmails

            self.franchiseEnabled = franchiseEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)

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
                businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyType = try container.decode(String.self, forKey: .companyType)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxes = try container.decode([CompanyTaxesSerializer].self, forKey: .taxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

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
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
        }
    }
}
