

import Foundation
public extension ApplicationClient {
    /*
         Model: BusinessDetails
         Used By: Payment
     */
    class BusinessDetails: Codable {
        public var vintage: String?

        public var pan: String?

        public var businessType: String?

        public var name: String?

        public var fda: String?

        public var shopAndEstablishment: [String: Any]?

        public var address: KYCAddress?

        public var gstin: String?

        public var entityType: String?

        public var fssai: String?

        public var businessOwnershipType: String?

        public enum CodingKeys: String, CodingKey {
            case vintage

            case pan

            case businessType = "business_type"

            case name

            case fda

            case shopAndEstablishment = "shop_and_establishment"

            case address

            case gstin

            case entityType = "entity_type"

            case fssai

            case businessOwnershipType = "business_ownership_type"
        }

        public init(address: KYCAddress? = nil, businessOwnershipType: String? = nil, businessType: String? = nil, entityType: String? = nil, fda: String? = nil, fssai: String? = nil, gstin: String? = nil, name: String? = nil, pan: String? = nil, shopAndEstablishment: [String: Any]? = nil, vintage: String? = nil) {
            self.vintage = vintage

            self.pan = pan

            self.businessType = businessType

            self.name = name

            self.fda = fda

            self.shopAndEstablishment = shopAndEstablishment

            self.address = address

            self.gstin = gstin

            self.entityType = entityType

            self.fssai = fssai

            self.businessOwnershipType = businessOwnershipType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vintage = try container.decode(String.self, forKey: .vintage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fda = try container.decode(String.self, forKey: .fda)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(KYCAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fssai = try container.decode(String.self, forKey: .fssai)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vintage, forKey: .vintage)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(businessType, forKey: .businessType)

            try? container.encode(name, forKey: .name)

            try? container.encode(fda, forKey: .fda)

            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(entityType, forKey: .entityType)

            try? container.encode(fssai, forKey: .fssai)

            try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)
        }
    }
}
