

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var landmark: String?

        public var pincode: Int

        public var address1: String

        public var state: String

        public var country: String

        public var latitude: Double

        public var addressType: String

        public var longitude: Double

        public var countryCode: String?

        public var city: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case landmark

            case pincode

            case address1

            case state

            case country

            case latitude

            case addressType = "address_type"

            case longitude

            case countryCode = "country_code"

            case city

            case address2
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.landmark = landmark

            self.pincode = pincode

            self.address1 = address1

            self.state = state

            self.country = country

            self.latitude = latitude

            self.addressType = addressType

            self.longitude = longitude

            self.countryCode = countryCode

            self.city = city

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
