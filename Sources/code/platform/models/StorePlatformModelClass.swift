

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var country: String

        public var packagingMaterialCount: Int?

        public var updatedAt: String?

        public var locationType: String

        public var isActive: Bool?

        public var address1: String

        public var brandId: [String: Any]?

        public var longitude: Double

        public var loginUsername: String

        public var vatNo: String?

        public var city: String

        public var alohomoraUserId: Int?

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public var storeEmail: String

        public var mallArea: String?

        public var storeAddressJson: StoreAddress?

        public var storeActiveFrom: String?

        public var latitude: Double

        public var sId: String

        public var state: String

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var name: String

        public var fulfillmentChannel: String

        public var brandStoreTags: [String]?

        public var mallName: String?

        public var meta: StoreMeta

        public var orderIntegrationId: String?

        public var createdAt: String

        public var phone: Int

        public var pincode: String

        public var companyId: Int

        public var code: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case country

            case packagingMaterialCount = "packaging_material_count"

            case updatedAt = "updated_at"

            case locationType = "location_type"

            case isActive = "is_active"

            case address1

            case brandId = "brand_id"

            case longitude

            case loginUsername = "login_username"

            case vatNo = "vat_no"

            case city

            case alohomoraUserId = "alohomora_user_id"

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeEmail = "store_email"

            case mallArea = "mall_area"

            case storeAddressJson = "store_address_json"

            case storeActiveFrom = "store_active_from"

            case latitude

            case sId = "s_id"

            case state

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case name

            case fulfillmentChannel = "fulfillment_channel"

            case brandStoreTags = "brand_store_tags"

            case mallName = "mall_name"

            case meta

            case orderIntegrationId = "order_integration_id"

            case createdAt = "created_at"

            case phone

            case pincode

            case companyId = "company_id"

            case code

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.country = country

            self.packagingMaterialCount = packagingMaterialCount

            self.updatedAt = updatedAt

            self.locationType = locationType

            self.isActive = isActive

            self.address1 = address1

            self.brandId = brandId

            self.longitude = longitude

            self.loginUsername = loginUsername

            self.vatNo = vatNo

            self.city = city

            self.alohomoraUserId = alohomoraUserId

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon

            self.storeEmail = storeEmail

            self.mallArea = mallArea

            self.storeAddressJson = storeAddressJson

            self.storeActiveFrom = storeActiveFrom

            self.latitude = latitude

            self.sId = sId

            self.state = state

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.name = name

            self.fulfillmentChannel = fulfillmentChannel

            self.brandStoreTags = brandStoreTags

            self.mallName = mallName

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.createdAt = createdAt

            self.phone = phone

            self.pincode = pincode

            self.companyId = companyId

            self.code = code

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            sId = try container.decode(String.self, forKey: .sId)

            state = try container.decode(String.self, forKey: .state)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
