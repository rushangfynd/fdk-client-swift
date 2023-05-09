

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address1: String?

        public var address2: String?

        public var pincode: String

        public var state: String

        public var firstName: String

        public var lastName: String

        public var mobile: Int

        public var city: String

        public var phone: Int

        public var country: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case address2

            case pincode

            case state

            case firstName = "first_name"

            case lastName = "last_name"

            case mobile

            case city

            case phone

            case country

            case email
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address1 = address1

            self.address2 = address2

            self.pincode = pincode

            self.state = state

            self.firstName = firstName

            self.lastName = lastName

            self.mobile = mobile

            self.city = city

            self.phone = phone

            self.country = country

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address1, forKey: .address1)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address1: String?

        public var address2: String?

        public var pincode: String

        public var state: String

        public var firstName: String

        public var lastName: String

        public var mobile: Int

        public var city: String

        public var phone: Int

        public var country: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case address2

            case pincode

            case state

            case firstName = "first_name"

            case lastName = "last_name"

            case mobile

            case city

            case phone

            case country

            case email
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address1 = address1

            self.address2 = address2

            self.pincode = pincode

            self.state = state

            self.firstName = firstName

            self.lastName = lastName

            self.mobile = mobile

            self.city = city

            self.phone = phone

            self.country = country

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address1, forKey: .address1)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
