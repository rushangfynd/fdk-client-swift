

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var pincode: String

        public var orderingStoreId: Int

        public var code: String

        public var address: String

        public var city: String

        public var country: String

        public var state: String

        public var meta: [String: Any]

        public var phone: String

        public var contactPerson: String

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case orderingStoreId = "ordering_store_id"

            case code

            case address

            case city

            case country

            case state

            case meta

            case phone

            case contactPerson = "contact_person"

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.address = address

            self.city = city

            self.country = country

            self.state = state

            self.meta = meta

            self.phone = phone

            self.contactPerson = contactPerson

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var pincode: String

        public var orderingStoreId: Int

        public var code: String

        public var address: String

        public var city: String

        public var country: String

        public var state: String

        public var meta: [String: Any]

        public var phone: String

        public var contactPerson: String

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case orderingStoreId = "ordering_store_id"

            case code

            case address

            case city

            case country

            case state

            case meta

            case phone

            case contactPerson = "contact_person"

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.address = address

            self.city = city

            self.country = country

            self.state = state

            self.meta = meta

            self.phone = phone

            self.contactPerson = contactPerson

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}
