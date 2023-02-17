

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address1: String?

        public var mobile: Int

        public var email: String

        public var firstName: String

        public var country: String

        public var phone: Int

        public var city: String

        public var pincode: String

        public var address2: String?

        public var state: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case mobile

            case email

            case firstName = "first_name"

            case country

            case phone

            case city

            case pincode

            case address2

            case state

            case lastName = "last_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address1 = address1

            self.mobile = mobile

            self.email = email

            self.firstName = firstName

            self.country = country

            self.phone = phone

            self.city = city

            self.pincode = pincode

            self.address2 = address2

            self.state = state

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(Int.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(Int.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
