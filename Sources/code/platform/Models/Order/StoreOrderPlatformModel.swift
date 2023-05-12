

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var sId: String

        public var loginUsername: String

        public var state: String

        public var meta: StoreMeta

        public var storeEmail: String

        public var country: String

        public var phone: Int

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var address2: String?

        public var orderIntegrationId: String?

        public var locationType: String

        public var latitude: Double

        public var companyId: Int

        public var isActive: Bool?

        public var name: String

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var storeActiveFrom: String?

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var address1: String

        public var code: String?

        public var mallArea: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var fulfillmentChannel: String

        public var createdAt: String

        public var city: String

        public var longitude: Double

        public var mallName: String?

        public var contactPerson: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case loginUsername = "login_username"

            case state

            case meta

            case storeEmail = "store_email"

            case country

            case phone

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case address2

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case latitude

            case companyId = "company_id"

            case isActive = "is_active"

            case name

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case storeActiveFrom = "store_active_from"

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case address1

            case code

            case mallArea = "mall_area"

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case fulfillmentChannel = "fulfillment_channel"

            case createdAt = "created_at"

            case city

            case longitude

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.loginUsername = loginUsername

            self.state = state

            self.meta = meta

            self.storeEmail = storeEmail

            self.country = country

            self.phone = phone

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.latitude = latitude

            self.companyId = companyId

            self.isActive = isActive

            self.name = name

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.storeActiveFrom = storeActiveFrom

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.code = code

            self.mallArea = mallArea

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.fulfillmentChannel = fulfillmentChannel

            self.createdAt = createdAt

            self.city = city

            self.longitude = longitude

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Store
         Used By: Order
     */

    class Store: Codable {
        public var sId: String

        public var loginUsername: String

        public var state: String

        public var meta: StoreMeta

        public var storeEmail: String

        public var country: String

        public var phone: Int

        public var updatedAt: String?

        public var packagingMaterialCount: Int?

        public var address2: String?

        public var orderIntegrationId: String?

        public var locationType: String

        public var latitude: Double

        public var companyId: Int

        public var isActive: Bool?

        public var name: String

        public var storeAddressJson: StoreAddress?

        public var brandStoreTags: [String]?

        public var storeActiveFrom: String?

        public var isArchived: Bool?

        public var parentStoreId: Int?

        public var address1: String

        public var code: String?

        public var mallArea: String?

        public var pincode: String

        public var alohomoraUserId: Int?

        public var fulfillmentChannel: String

        public var createdAt: String

        public var city: String

        public var longitude: Double

        public var mallName: String?

        public var contactPerson: String

        public var vatNo: String?

        public var brandId: [String: Any]?

        public var isEnabledForRecon: Bool?

        public enum CodingKeys: String, CodingKey {
            case sId = "s_id"

            case loginUsername = "login_username"

            case state

            case meta

            case storeEmail = "store_email"

            case country

            case phone

            case updatedAt = "updated_at"

            case packagingMaterialCount = "packaging_material_count"

            case address2

            case orderIntegrationId = "order_integration_id"

            case locationType = "location_type"

            case latitude

            case companyId = "company_id"

            case isActive = "is_active"

            case name

            case storeAddressJson = "store_address_json"

            case brandStoreTags = "brand_store_tags"

            case storeActiveFrom = "store_active_from"

            case isArchived = "is_archived"

            case parentStoreId = "parent_store_id"

            case address1

            case code

            case mallArea = "mall_area"

            case pincode

            case alohomoraUserId = "alohomora_user_id"

            case fulfillmentChannel = "fulfillment_channel"

            case createdAt = "created_at"

            case city

            case longitude

            case mallName = "mall_name"

            case contactPerson = "contact_person"

            case vatNo = "vat_no"

            case brandId = "brand_id"

            case isEnabledForRecon = "is_enabled_for_recon"
        }

        public init(address1: String, address2: String? = nil, alohomoraUserId: Int? = nil, brandId: [String: Any]? = nil, brandStoreTags: [String]? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, createdAt: String, fulfillmentChannel: String, isActive: Bool? = nil, isArchived: Bool? = nil, isEnabledForRecon: Bool? = nil, latitude: Double, locationType: String, loginUsername: String, longitude: Double, mallArea: String? = nil, mallName: String? = nil, meta: StoreMeta, name: String, orderIntegrationId: String? = nil, packagingMaterialCount: Int? = nil, parentStoreId: Int? = nil, phone: Int, pincode: String, state: String, storeActiveFrom: String? = nil, storeAddressJson: StoreAddress? = nil, storeEmail: String, sId: String, updatedAt: String? = nil, vatNo: String? = nil) {
            self.sId = sId

            self.loginUsername = loginUsername

            self.state = state

            self.meta = meta

            self.storeEmail = storeEmail

            self.country = country

            self.phone = phone

            self.updatedAt = updatedAt

            self.packagingMaterialCount = packagingMaterialCount

            self.address2 = address2

            self.orderIntegrationId = orderIntegrationId

            self.locationType = locationType

            self.latitude = latitude

            self.companyId = companyId

            self.isActive = isActive

            self.name = name

            self.storeAddressJson = storeAddressJson

            self.brandStoreTags = brandStoreTags

            self.storeActiveFrom = storeActiveFrom

            self.isArchived = isArchived

            self.parentStoreId = parentStoreId

            self.address1 = address1

            self.code = code

            self.mallArea = mallArea

            self.pincode = pincode

            self.alohomoraUserId = alohomoraUserId

            self.fulfillmentChannel = fulfillmentChannel

            self.createdAt = createdAt

            self.city = city

            self.longitude = longitude

            self.mallName = mallName

            self.contactPerson = contactPerson

            self.vatNo = vatNo

            self.brandId = brandId

            self.isEnabledForRecon = isEnabledForRecon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sId = try container.decode(String.self, forKey: .sId)

            loginUsername = try container.decode(String.self, forKey: .loginUsername)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode(StoreMeta.self, forKey: .meta)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                address2 = try container.decode(String.self, forKey: .address2)

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

            locationType = try container.decode(String.self, forKey: .locationType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

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
                storeActiveFrom = try container.decode(String.self, forKey: .storeActiveFrom)

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
                parentStoreId = try container.decode(Int.self, forKey: .parentStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                alohomoraUserId = try container.decode(Int.self, forKey: .alohomoraUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                mallName = try container.decode(String.self, forKey: .mallName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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
                isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encode(storeActiveFrom, forKey: .storeActiveFrom)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(parentStoreId, forKey: .parentStoreId)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(mallArea, forKey: .mallArea)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(alohomoraUserId, forKey: .alohomoraUserId)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(mallName, forKey: .mallName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(vatNo, forKey: .vatNo)

            try? container.encode(brandId, forKey: .brandId)

            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
        }
    }
}
