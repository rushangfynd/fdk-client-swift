

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var displayName: String

        public var documents: [Document]?

        public var storeType: String?

        public var autoInvoice: Bool?

        public var company: Int

        public var holiday: [HolidaySchemaSerializer]?

        public var name: String

        public var customJson: [String: Any]?

        public var manager: LocationManagerSerializer?

        public var code: String

        public var warnings: [String: Any]?

        public var uid: Int?

        public var slug: String?

        public var address: AddressSerializer

        public var stage: String?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var notificationEmails: [String]?

        public var creditNote: Bool?

        public var contactNumbers: [SellerPhoneNumber]?

        public var timing: [LocationDayWiseSerializer]?

        public var gstCredentials: InvoiceDetailsSerializer?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case documents

            case storeType = "store_type"

            case autoInvoice = "auto_invoice"

            case company

            case holiday

            case name

            case customJson = "_custom_json"

            case manager

            case code

            case warnings

            case uid

            case slug

            case address

            case stage

            case productReturnConfig = "product_return_config"

            case notificationEmails = "notification_emails"

            case creditNote = "credit_note"

            case contactNumbers = "contact_numbers"

            case timing

            case gstCredentials = "gst_credentials"
        }

        public init(address: AddressSerializer, autoInvoice: Bool? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, slug: String? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.displayName = displayName

            self.documents = documents

            self.storeType = storeType

            self.autoInvoice = autoInvoice

            self.company = company

            self.holiday = holiday

            self.name = name

            self.customJson = customJson

            self.manager = manager

            self.code = code

            self.warnings = warnings

            self.uid = uid

            self.slug = slug

            self.address = address

            self.stage = stage

            self.productReturnConfig = productReturnConfig

            self.notificationEmails = notificationEmails

            self.creditNote = creditNote

            self.contactNumbers = contactNumbers

            self.timing = timing

            self.gstCredentials = gstCredentials
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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

            do {
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            code = try container.decode(String.self, forKey: .code)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(AddressSerializer.self, forKey: .address)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNote = try container.decode(Bool.self, forKey: .creditNote)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
        }
    }
}
