

import Foundation
public extension PlatformClient {
    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var createdOn: String?

        public var manager: LocationManagerSerializer?

        public var integrationType: LocationIntegrationType?

        public var contactNumbers: [SellerPhoneNumber]?

        public var customJson: [String: Any]?

        public var modifiedOn: String?

        public var name: String

        public var warnings: [String: Any]?

        public var phoneNumber: String

        public var stage: String?

        public var displayName: String

        public var notificationEmails: [String]?

        public var uid: Int?

        public var verifiedBy: UserSerializer1?

        public var documents: [Document]?

        public var company: GetCompanySerializer?

        public var modifiedBy: UserSerializer1?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var storeType: String?

        public var code: String

        public var address: GetAddressSerializer

        public var timing: [LocationDayWiseSerializer]?

        public var createdBy: UserSerializer1?

        public var verifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case manager

            case integrationType = "integration_type"

            case contactNumbers = "contact_numbers"

            case customJson = "_custom_json"

            case modifiedOn = "modified_on"

            case name

            case warnings

            case phoneNumber = "phone_number"

            case stage

            case displayName = "display_name"

            case notificationEmails = "notification_emails"

            case uid

            case verifiedBy = "verified_by"

            case documents

            case company

            case modifiedBy = "modified_by"

            case gstCredentials = "gst_credentials"

            case productReturnConfig = "product_return_config"

            case storeType = "store_type"

            case code

            case address

            case timing

            case createdBy = "created_by"

            case verifiedOn = "verified_on"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer1? = nil, createdOn: String? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, integrationType: LocationIntegrationType? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer1? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer1? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.createdOn = createdOn

            self.manager = manager

            self.integrationType = integrationType

            self.contactNumbers = contactNumbers

            self.customJson = customJson

            self.modifiedOn = modifiedOn

            self.name = name

            self.warnings = warnings

            self.phoneNumber = phoneNumber

            self.stage = stage

            self.displayName = displayName

            self.notificationEmails = notificationEmails

            self.uid = uid

            self.verifiedBy = verifiedBy

            self.documents = documents

            self.company = company

            self.modifiedBy = modifiedBy

            self.gstCredentials = gstCredentials

            self.productReturnConfig = productReturnConfig

            self.storeType = storeType

            self.code = code

            self.address = address

            self.timing = timing

            self.createdBy = createdBy

            self.verifiedOn = verifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                documents = try container.decode([Document].self, forKey: .documents)

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
                modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
        }
    }
}
