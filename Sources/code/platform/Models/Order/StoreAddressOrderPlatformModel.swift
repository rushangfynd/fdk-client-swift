

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var longitude: Double

        public var phone: String

        public var createdAt: String

        public var state: String

        public var version: String?

        public var landmark: String?

        public var countryCode: String

        public var latitude: Double

        public var country: String

        public var area: String?

        public var contactPerson: String

        public var pincode: Int

        public var city: String

        public var addressType: String

        public var addressCategory: String

        public var address1: String

        public var email: String?

        public var address2: String?

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case phone

            case createdAt = "created_at"

            case state

            case version

            case landmark

            case countryCode = "country_code"

            case latitude

            case country

            case area

            case contactPerson = "contact_person"

            case pincode

            case city

            case addressType = "address_type"

            case addressCategory = "address_category"

            case address1

            case email

            case address2

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.phone = phone

            self.createdAt = createdAt

            self.state = state

            self.version = version

            self.landmark = landmark

            self.countryCode = countryCode

            self.latitude = latitude

            self.country = country

            self.area = area

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.city = city

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.address1 = address1

            self.email = email

            self.address2 = address2

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            phone = try container.decode(String.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var longitude: Double

        public var phone: String

        public var createdAt: String

        public var state: String

        public var version: String?

        public var landmark: String?

        public var countryCode: String

        public var latitude: Double

        public var country: String

        public var area: String?

        public var contactPerson: String

        public var pincode: Int

        public var city: String

        public var addressType: String

        public var addressCategory: String

        public var address1: String

        public var email: String?

        public var address2: String?

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case phone

            case createdAt = "created_at"

            case state

            case version

            case landmark

            case countryCode = "country_code"

            case latitude

            case country

            case area

            case contactPerson = "contact_person"

            case pincode

            case city

            case addressType = "address_type"

            case addressCategory = "address_category"

            case address1

            case email

            case address2

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.phone = phone

            self.createdAt = createdAt

            self.state = state

            self.version = version

            self.landmark = landmark

            self.countryCode = countryCode

            self.latitude = latitude

            self.country = country

            self.area = area

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.city = city

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.address1 = address1

            self.email = email

            self.address2 = address2

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            phone = try container.decode(String.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
