

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var phone: Int

        public var storeActiveFrom: String?

        public var state: String

        public var loginUsername: String

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public var address2: String?

        public var code: String?

        public var isActive: Bool?

        public var brandStoreTags: [String]?

        public var parentStoreId: Int?

        public var companyId: Int

        public var mallArea: String?

        public var city: String

        public var pincode: String

        public var meta: StoreMeta

        public var storeEmail: String

        public var isArchived: Bool?

        public var sId: String

        public var orderIntegrationId: String?

        public var locationType: String

        public var address1: String

        public var createdAt: String

        public var name: String

        public var longitude: Double

        public var packagingMaterialCount: Int?

        public var fulfillmentChannel: String

        public var contactPerson: String

        public var country: String

        public var updatedAt: String?

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var storeAddressJson: StoreAddress?

        public var alohomoraUserId: Int?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case phone

            case storeActiveFrom = "store_active_from"

            case state

            case loginUsername = "login_username"

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"

            case address2

            case code

            case isActive = "is_active"

            case brandStoreTags = "brand_store_tags"

            case parentStoreId = "parent_store_id"

            case companyId = "company_id"

            case mallArea = "mall_area"

            case city

            case pincode

            case meta

            case storeEmail = "store_email"

            case isArchived = "is_archived"

            case sId = "s_id"

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case address1

            case createdAt = "created_at"

            case name

            case longitude

            case packagingMaterialCount = "packaging_material_count"

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"

            case country

            case updatedAt = "updated_at"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case storeAddressJson = "store_address_json"

            case alohomoraUserId = "alohomora_user_id"

            case latitude
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.phone = phone

            self.storeActiveFrom = storeActiveFrom

            self.state = state

            self.loginUsername = loginUsername

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName

            self.address2 = address2

            self.code = code

            self.isActive = isActive

            self.brandStoreTags = brandStoreTags

            self.parentStoreId = parentStoreId

            self.companyId = companyId

            self.mallArea = mallArea

            self.city = city

            self.pincode = pincode

            self.meta = meta

            self.storeEmail = storeEmail

            self.isArchived = isArchived

            self.sId = sId

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.address1 = address1

            self.createdAt = createdAt

            self.name = name

            self.longitude = longitude

            self.packagingMaterialCount = packagingMaterialCount

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson

            self.country = country

            self.updatedAt = updatedAt

            self.vatNo = vatNo

            self.brandId = brandId

            self.storeAddressJson = storeAddressJson

            self.alohomoraUserId = alohomoraUserId

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
