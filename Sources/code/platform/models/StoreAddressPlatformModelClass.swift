

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var updatedAt: String

        public var createdAt: String

        public var email: String?

        public var area: String?

        public var countryCode: String

        public var landmark: String?

        public var addressType: String

        public var state: String

        public var address1: String

        public var longitude: Double

        public var city: String

        public var latitude: Double

        public var address2: String?

        public var country: String

        public var addressCategory: String

        public var contactPerson: String

        public var phone: String

        public var version: String?

        public var pincode: Int

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case email

            case area

            case countryCode = "country_code"

            case landmark

            case addressType = "address_type"

            case state

            case address1

            case longitude

            case city

            case latitude

            case address2

            case country

            case addressCategory = "address_category"

            case contactPerson = "contact_person"

            case phone

            case version

            case pincode
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.email = email

            self.area = area

            self.countryCode = countryCode

            self.landmark = landmark

            self.addressType = addressType

            self.state = state

            self.address1 = address1

            self.longitude = longitude

            self.city = city

            self.latitude = latitude

            self.address2 = address2

            self.country = country

            self.addressCategory = addressCategory

            self.contactPerson = contactPerson

            self.phone = phone

            self.version = version

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}