

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var longitude: Double

        public var area: String?

        public var pincode: Int

        public var createdAt: String

        public var country: String

        public var state: String

        public var latitude: Double

        public var city: String

        public var addressType: String

        public var email: String?

        public var addressCategory: String

        public var address2: String?

        public var version: String?

        public var phone: String

        public var address1: String

        public var updatedAt: String

        public var landmark: String?

        public var countryCode: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case area

            case pincode

            case createdAt = "created_at"

            case country

            case state

            case latitude

            case city

            case addressType = "address_type"

            case email

            case addressCategory = "address_category"

            case address2

            case version

            case phone

            case address1

            case updatedAt = "updated_at"

            case landmark

            case countryCode = "country_code"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.area = area

            self.pincode = pincode

            self.createdAt = createdAt

            self.country = country

            self.state = state

            self.latitude = latitude

            self.city = city

            self.addressType = addressType

            self.email = email

            self.addressCategory = addressCategory

            self.address2 = address2

            self.version = version

            self.phone = phone

            self.address1 = address1

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.countryCode = countryCode

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
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

        public var area: String?

        public var pincode: Int

        public var createdAt: String

        public var country: String

        public var state: String

        public var latitude: Double

        public var city: String

        public var addressType: String

        public var email: String?

        public var addressCategory: String

        public var address2: String?

        public var version: String?

        public var phone: String

        public var address1: String

        public var updatedAt: String

        public var landmark: String?

        public var countryCode: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case longitude

            case area

            case pincode

            case createdAt = "created_at"

            case country

            case state

            case latitude

            case city

            case addressType = "address_type"

            case email

            case addressCategory = "address_category"

            case address2

            case version

            case phone

            case address1

            case updatedAt = "updated_at"

            case landmark

            case countryCode = "country_code"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.area = area

            self.pincode = pincode

            self.createdAt = createdAt

            self.country = country

            self.state = state

            self.latitude = latitude

            self.city = city

            self.addressType = addressType

            self.email = email

            self.addressCategory = addressCategory

            self.address2 = address2

            self.version = version

            self.phone = phone

            self.address1 = address1

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.countryCode = countryCode

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
