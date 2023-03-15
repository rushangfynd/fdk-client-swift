

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var landmark: String?

        public var address2: String?

        public var area: String?

        public var latitude: Double

        public var contactPerson: String

        public var country: String

        public var addressCategory: String

        public var email: String?

        public var countryCode: String

        public var version: String?

        public var updatedAt: String

        public var addressType: String

        public var address1: String

        public var phone: String

        public var createdAt: String

        public var city: String

        public var pincode: Int

        public var state: String

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case address2

            case area

            case latitude

            case contactPerson = "contact_person"

            case country

            case addressCategory = "address_category"

            case email

            case countryCode = "country_code"

            case version

            case updatedAt = "updated_at"

            case addressType = "address_type"

            case address1

            case phone

            case createdAt = "created_at"

            case city

            case pincode

            case state

            case longitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.address2 = address2

            self.area = area

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.country = country

            self.addressCategory = addressCategory

            self.email = email

            self.countryCode = countryCode

            self.version = version

            self.updatedAt = updatedAt

            self.addressType = addressType

            self.address1 = address1

            self.phone = phone

            self.createdAt = createdAt

            self.city = city

            self.pincode = pincode

            self.state = state

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressType = try container.decode(String.self, forKey: .addressType)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var landmark: String?

        public var address2: String?

        public var area: String?

        public var latitude: Double

        public var contactPerson: String

        public var country: String

        public var addressCategory: String

        public var email: String?

        public var countryCode: String

        public var version: String?

        public var updatedAt: String

        public var addressType: String

        public var address1: String

        public var phone: String

        public var createdAt: String

        public var city: String

        public var pincode: Int

        public var state: String

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case address2

            case area

            case latitude

            case contactPerson = "contact_person"

            case country

            case addressCategory = "address_category"

            case email

            case countryCode = "country_code"

            case version

            case updatedAt = "updated_at"

            case addressType = "address_type"

            case address1

            case phone

            case createdAt = "created_at"

            case city

            case pincode

            case state

            case longitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.address2 = address2

            self.area = area

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.country = country

            self.addressCategory = addressCategory

            self.email = email

            self.countryCode = countryCode

            self.version = version

            self.updatedAt = updatedAt

            self.addressType = addressType

            self.address1 = address1

            self.phone = phone

            self.createdAt = createdAt

            self.city = city

            self.pincode = pincode

            self.state = state

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressType = try container.decode(String.self, forKey: .addressType)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}
