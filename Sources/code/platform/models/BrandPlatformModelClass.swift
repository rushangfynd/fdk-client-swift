

import Foundation
public extension PlatformClient {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var company: String

        public var brandName: String

        public var pickupLocation: String?

        public var createdOn: Int?

        public var creditNoteAllowed: Bool?

        public var creditNoteExpiryDays: Int?

        public var isVirtualInvoice: Bool?

        public var startDate: String?

        public var scriptLastRan: String?

        public var logo: String?

        public var brandId: Int

        public var modifiedOn: Int?

        public var invoicePrefix: String?

        public enum CodingKeys: String, CodingKey {
            case company

            case brandName = "brand_name"

            case pickupLocation = "pickup_location"

            case createdOn = "created_on"

            case creditNoteAllowed = "credit_note_allowed"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case isVirtualInvoice = "is_virtual_invoice"

            case startDate = "start_date"

            case scriptLastRan = "script_last_ran"

            case logo

            case brandId = "brand_id"

            case modifiedOn = "modified_on"

            case invoicePrefix = "invoice_prefix"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.company = company

            self.brandName = brandName

            self.pickupLocation = pickupLocation

            self.createdOn = createdOn

            self.creditNoteAllowed = creditNoteAllowed

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.isVirtualInvoice = isVirtualInvoice

            self.startDate = startDate

            self.scriptLastRan = scriptLastRan

            self.logo = logo

            self.brandId = brandId

            self.modifiedOn = modifiedOn

            self.invoicePrefix = invoicePrefix
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                pickupLocation = try container.decode(String.self, forKey: .pickupLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                scriptLastRan = try container.decode(String.self, forKey: .scriptLastRan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)
        }
    }
}
