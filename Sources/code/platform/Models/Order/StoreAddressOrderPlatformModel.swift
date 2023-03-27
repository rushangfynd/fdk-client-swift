

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var phone: String

        public var longitude: Double

        public var createdAt: String

        public var countryCode: String

        public var email: String?

        public var pincode: Int

        public var updatedAt: String

        public var area: String?

        public var landmark: String?

        public var addressCategory: String

        public var address2: String?

        public var contactPerson: String

        public var address1: String

        public var version: String?

        public var country: String

        public var latitude: Double

        public var state: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case city

            case phone

            case longitude

            case createdAt = "created_at"

            case countryCode = "country_code"

            case email

            case pincode

            case updatedAt = "updated_at"

            case area

            case landmark

            case addressCategory = "address_category"

            case address2

            case contactPerson = "contact_person"

            case address1

            case version

            case country

            case latitude

            case state

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.phone = phone

            self.longitude = longitude

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.email = email

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.area = area

            self.landmark = landmark

            self.addressCategory = addressCategory

            self.address2 = address2

            self.contactPerson = contactPerson

            self.address1 = address1

            self.version = version

            self.country = country

            self.latitude = latitude

            self.state = state

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var phone: String

        public var longitude: Double

        public var createdAt: String

        public var countryCode: String

        public var email: String?

        public var pincode: Int

        public var updatedAt: String

        public var area: String?

        public var landmark: String?

        public var addressCategory: String

        public var address2: String?

        public var contactPerson: String

        public var address1: String

        public var version: String?

        public var country: String

        public var latitude: Double

        public var state: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case city

            case phone

            case longitude

            case createdAt = "created_at"

            case countryCode = "country_code"

            case email

            case pincode

            case updatedAt = "updated_at"

            case area

            case landmark

            case addressCategory = "address_category"

            case address2

            case contactPerson = "contact_person"

            case address1

            case version

            case country

            case latitude

            case state

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.phone = phone

            self.longitude = longitude

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.email = email

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.area = area

            self.landmark = landmark

            self.addressCategory = addressCategory

            self.address2 = address2

            self.contactPerson = contactPerson

            self.address1 = address1

            self.version = version

            self.country = country

            self.latitude = latitude

            self.state = state

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
