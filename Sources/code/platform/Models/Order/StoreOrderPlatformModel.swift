

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var fulfillmentChannel: String

        public var address2: String?

        public var meta: StoreMeta

        public var latitude: Double

        public var vatNo: String?

        public var isActive: Bool?

        public var mallName: String?

        public var storeEmail: String

        public var alohomoraUserId: Int?

        public var address1: String

        public var storeActiveFrom: String?

        public var pincode: String

        public var loginUsername: String

        public var country: String

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var orderIntegrationId: String?

        public var state: String

        public var contactPerson: String

        public var parentStoreId: Int?

        public var mallArea: String?

        public var brandStoreTags: [String]?

        public var city: String

        public var longitude: Double

        public var code: String?

        public var isArchived: Bool?

        public var companyId: Int

        public var name: String

        public var phone: Int

        public var createdAt: String

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var storeAddressJson: StoreAddress?

        public var packagingMaterialCount: Int?

        public var sId: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case address2

            case meta

            case latitude

            case vatNo = "vat_no"

            case isActive = "is_active"

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case storeActiveFrom = "store_active_from"

            case pincode

            case loginUsername = "login_username"

            case country

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case orderIntegrationId = "order_integration_id"

            case state

            case contactPerson = "contact_person"

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"

            case brandStoreTags = "brand_store_tags"

            case city

            case longitude

            case code

            case isArchived = "is_archived"

            case companyId = "company_id"

            case name

            case phone

            case createdAt = "created_at"

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeAddressJson = "store_address_json"

            case packagingMaterialCount = "packaging_material_count"

            case sId = "s_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.fulfillmentChannel = fulfillmentChannel

            self.address2 = address2

            self.meta = meta

            self.latitude = latitude

            self.vatNo = vatNo

            self.isActive = isActive

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.country = country

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.orderIntegrationId = orderIntegrationId

            self.state = state

            self.contactPerson = contactPerson

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea

            self.brandStoreTags = brandStoreTags

            self.city = city

            self.longitude = longitude

            self.code = code

            self.isArchived = isArchived

            self.companyId = companyId

            self.name = name

            self.phone = phone

            self.createdAt = createdAt

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.storeAddressJson = storeAddressJson

            self.packagingMaterialCount = packagingMaterialCount

            self.sId = sId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(sId, forKey: .sId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var fulfillmentChannel: String

        public var address2: String?

        public var meta: StoreMeta

        public var latitude: Double

        public var vatNo: String?

        public var isActive: Bool?

        public var mallName: String?

        public var storeEmail: String

        public var alohomoraUserId: Int?

        public var address1: String

        public var storeActiveFrom: String?

        public var pincode: String

        public var loginUsername: String

        public var country: String

        public var brandId: [String: Any]?

        public var updatedAt: String?

        public var orderIntegrationId: String?

        public var state: String

        public var contactPerson: String

        public var parentStoreId: Int?

        public var mallArea: String?

        public var brandStoreTags: [String]?

        public var city: String

        public var longitude: Double

        public var code: String?

        public var isArchived: Bool?

        public var companyId: Int

        public var name: String

        public var phone: Int

        public var createdAt: String

        public var locationType: String

        public var isEnabledForRecon: Bool?

        public var storeAddressJson: StoreAddress?

        public var packagingMaterialCount: Int?

        public var sId: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case address2

            case meta

            case latitude

            case vatNo = "vat_no"

            case isActive = "is_active"

            case mallName = "mall_name"

            case storeEmail = "store_email"

            case alohomoraUserId = "alohomora_user_id"

            case address1

            case storeActiveFrom = "store_active_from"

            case pincode

            case loginUsername = "login_username"

            case country

            case brandId = "brand_id"

            case updatedAt = "updated_at"

            case orderIntegrationId = "order_integration_id"

            case state

            case contactPerson = "contact_person"

            case parentStoreId = "parent_store_id"

            case mallArea = "mall_area"

            case brandStoreTags = "brand_store_tags"

            case city

            case longitude

            case code

            case isArchived = "is_archived"

            case companyId = "company_id"

            case name

            case phone

            case createdAt = "created_at"

            case locationType = "location_type"

            case isEnabledForRecon = "is_enabled_for_recon"

            case storeAddressJson = "store_address_json"

            case packagingMaterialCount = "packaging_material_count"

            case sId = "s_id"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.fulfillmentChannel = fulfillmentChannel

            self.address2 = address2

            self.meta = meta

            self.latitude = latitude

            self.vatNo = vatNo

            self.isActive = isActive

            self.mallName = mallName

            self.storeEmail = storeEmail

            self.alohomoraUserId = alohomoraUserId

            self.address1 = address1

            self.storeActiveFrom = storeActiveFrom

            self.pincode = pincode

            self.loginUsername = loginUsername

            self.country = country

            self.brandId = brandId

            self.updatedAt = updatedAt

            self.orderIntegrationId = orderIntegrationId

            self.state = state

            self.contactPerson = contactPerson

            self.parentStoreId = parentStoreId

            self.mallArea = mallArea

            self.brandStoreTags = brandStoreTags

            self.city = city

            self.longitude = longitude

            self.code = code

            self.isArchived = isArchived

            self.companyId = companyId

            self.name = name

            self.phone = phone

            self.createdAt = createdAt

            self.locationType = locationType

            self.isEnabledForRecon = isEnabledForRecon

            self.storeAddressJson = storeAddressJson

            self.packagingMaterialCount = packagingMaterialCount

            self.sId = sId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                vatNo = try container.decode(String.self, forKey: .vatNo)

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
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            country = try container.decode(String.self, forKey: .country)

            do {
                brandId = try container.decode([String: Any].self, forKey: .brandId)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

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

            do {
                brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(Int.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            locationType = try container.decode(String.self, forKey: .locationType)

            do {
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

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
                packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(sId, forKey: .sId)
        }
    }
}
