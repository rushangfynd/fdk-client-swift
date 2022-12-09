

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var city: String

        public var state: String

        public var createdAt: String

        public var longitude: Double

        public var storeEmail: String

        public var address1: String

        public var address2: String?

        public var loginUsername: String

        public var alohomoraUserId: Int?

        public var packagingMaterialCount: Int?

        public var isEnabledForRecon: Bool?

        public var fulfillmentChannel: String

        public var country: String

        public var sId: String

        public var vatNo: String?

        public var parentStoreId: Int?

        public var locationType: String

        public var code: String?

        public var storeAddressJson: StoreAddress?

        public var companyId: Int

        public var contactPerson: String

        public var mallArea: String?

        public var updatedAt: String?

        public var storeActiveFrom: String?

        public var brandStoreTags: [String]?

        public var isActive: Bool?

        public var pincode: String

        public var mallName: String?

        public var latitude: Double

        public var brandId: [String: Any]?

        public var name: String

        public var orderIntegrationId: String?

        public var meta: StoreMeta

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case phone

            case city

            case state

            case createdAt = "created_at"

            case longitude

            case storeEmail = "store_email"

            case address1

            case address2

            case loginUsername = "login_username"

            case alohomoraUserId = "alohomora_user_id"

            case packagingMaterialCount = "packaging_material_count"

            case isEnabledForRecon = "is_enabled_for_recon"

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case sId = "s_id"

            case vatNo = "vat_no"

            case parentStoreId = "parent_store_id"

            case locationType = "location_type"

            case code

            case storeAddressJson = "store_address_json"

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case mallArea = "mall_area"

            case updatedAt = "updated_at"

            case storeActiveFrom = "store_active_from"

            case brandStoreTags = "brand_store_tags"

            case isActive = "is_active"

            case pincode

            case mallName = "mall_name"

            case latitude

            case brandId = "brand_id"

            case name

            case orderIntegrationId = "order_integration_id"

            case meta

            case isArchived = "is_archived"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.city = city

            self.state = state

            self.createdAt = createdAt

            self.longitude = longitude

            self.storeEmail = storeEmail

            self.address1 = address1

            self.address2 = address2

            self.loginUsername = loginUsername

            self.alohomoraUserId = alohomoraUserId

            self.packagingMaterialCount = packagingMaterialCount

            self.isEnabledForRecon = isEnabledForRecon

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.sId = sId

            self.vatNo = vatNo

            self.parentStoreId = parentStoreId

            self.locationType = locationType

            self.code = code

            self.storeAddressJson = storeAddressJson

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.mallArea = mallArea

            self.updatedAt = updatedAt

            self.storeActiveFrom = storeActiveFrom

            self.brandStoreTags = brandStoreTags

            self.isActive = isActive

            self.pincode = pincode

            self.mallName = mallName

            self.latitude = latitude

            self.brandId = brandId

            self.name = name

            self.orderIntegrationId = orderIntegrationId

            self.meta = meta

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

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

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

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

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
