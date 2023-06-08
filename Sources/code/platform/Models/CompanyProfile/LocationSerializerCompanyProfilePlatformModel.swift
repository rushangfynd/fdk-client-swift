

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var manager: LocationManagerSerializer?

        public var stage: String?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var address: AddressSerializer

        public var creditNote: Bool?

        public var documents: [Document]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var holiday: [HolidaySchemaSerializer]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var customJson: [String: Any]?

        public var displayName: String

        public var timing: [LocationDayWiseSerializer]?

        public var warnings: [String: Any]?

        public var uid: Int?

        public var notificationEmails: [String]?

        public var autoInvoice: Bool?

        public var company: Int

        public var storeType: String?

        public var name: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case manager

            case stage

            case gstCredentials = "gst_credentials"

            case address

            case creditNote = "credit_note"

            case documents

            case contactNumbers = "contact_numbers"

            case holiday

            case productReturnConfig = "product_return_config"

            case customJson = "_custom_json"

            case displayName = "display_name"

            case timing

            case warnings

            case uid

            case notificationEmails = "notification_emails"

            case autoInvoice = "auto_invoice"

            case company

            case storeType = "store_type"

            case name

            case code
        }

        public init(address: AddressSerializer, autoInvoice: Bool? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.manager = manager

            self.stage = stage

            self.gstCredentials = gstCredentials

            self.address = address

            self.creditNote = creditNote

            self.documents = documents

            self.contactNumbers = contactNumbers

            self.holiday = holiday

            self.productReturnConfig = productReturnConfig

            self.customJson = customJson

            self.displayName = displayName

            self.timing = timing

            self.warnings = warnings

            self.uid = uid

            self.notificationEmails = notificationEmails

            self.autoInvoice = autoInvoice

            self.company = company

            self.storeType = storeType

            self.name = name

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(AddressSerializer.self, forKey: .address)

            do {
                creditNote = try container.decode(Bool.self, forKey: .creditNote)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
