

import Foundation
public extension PlatformClient {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var storeEmail: String

        public var fulfillmentChannel: String

        public var meta: StoreMeta

        public var storeAddressJson: StoreAddress?

        public var sId: String

        public var alohomoraUserId: Int?

        public var brandStoreTags: [String]?

        public var longitude: Double

        public var updatedAt: String?

        public var state: String

        public var orderIntegrationId: String?

        public var latitude: Double

        public var contactPerson: String

        public var parentStoreId: Int?

        public var createdAt: String

        public var isActive: Bool?

        public var phone: Int

        public var country: String

        public var storeActiveFrom: String?

        public var pincode: String

        public var loginUsername: String

        public var packagingMaterialCount: Int?

        public var mallArea: String?

        public var city: String

        public var locationType: String

        public var name: String

        public var companyId: Int

        public var code: String?

        public var address1: String

        public var brandId: [String: Any]?

        public var isArchived: Bool?

        public var address2: String?

        public var isEnabledForRecon: Bool?

        public var mallName: String?

        public var vatNo: String?

        public enum CodingKeys: String, CodingKey {
            case storeEmail = "store_email"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case storeAddressJson = "store_address_json"

            case sId = "s_id"

            case alohomoraUserId = "alohomora_user_id"

            case brandStoreTags = "brand_store_tags"

            case longitude

            case updatedAt = "updated_at"

            case state

            case orderIntegrationId = "order_integration_id"

            case latitude

            case contactPerson = "contact_person"

            case parentStoreId = "parent_store_id"

            case createdAt = "created_at"

            case isActive = "is_active"

            case phone

            case country

            case storeActiveFrom = "store_active_from"

            case pincode

            case loginUsername = "login_username"

            case packagingMaterialCount = "packaging_material_count"

            case mallArea = "mall_area"

            case city

            case locationType = "location_type"

            case name

            case companyId = "company_id"

            case code

            case address1

            case brandId = "brand_id"

            case isArchived = "is_archived"

            case address2

            case isEnabledForRecon = "is_enabled_for_recon"

            case mallName = "mall_name"

            case vatNo = "vat_no"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.storeEmail = storeEmail

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.storeAddressJson = storeAddressJson

            self.sId = sId

            self.alohomoraUserId = alohomoraUserId

            self.brandStoreTags = brandStoreTags

            self.longitude = longitude

            self.updatedAt = updatedAt

            self.state = state

            self.orderIntegrationId = orderIntegrationId

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.parentStoreId = parentStoreId

            self.createdAt = createdAt

            self.isActive = isActive

            self.phone = phone

            self.country = country

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.packagingMaterialCount = packagingMaterialCount

            self.mallArea = mallArea

            self.city = city

            self.locationType = locationType

            self.name = name

            self.companyId = companyId

            self.code = code

            self.address1 = address1

            self.brandId = brandId

            self.isArchived = isArchived

            self.address2 = address2

            self.isEnabledForRecon = isEnabledForRecon

            self.mallName = mallName

            self.vatNo = vatNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            do {
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mallArea = try container.decode(String.self, forKey: .mallArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            locationType = try container.decode(String.self, forKey: .locationType)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encode(vatNo, forKey: .vatNo)
        }
    }
}
