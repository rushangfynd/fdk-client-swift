

import Foundation
public extension ApplicationClient {
    /*
         Model: KYCAddress
         Used By: Payment
     */
    class KYCAddress: Codable {
        public var city: String

        public var state: String

        public var addressline2: String?

        public var addressline1: String

        public var ownershipType: String?

        public var landMark: String?

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case city

            case state

            case addressline2

            case addressline1

            case ownershipType = "ownership_type"

            case landMark = "land_mark"

            case pincode
        }

        public init(addressline1: String, addressline2: String? = nil, city: String, landMark: String? = nil, ownershipType: String? = nil, pincode: String, state: String) {
            self.city = city

            self.state = state

            self.addressline2 = addressline2

            self.addressline1 = addressline1

            self.ownershipType = ownershipType

            self.landMark = landMark

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                addressline2 = try container.decode(String.self, forKey: .addressline2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landMark = try container.decode(String.self, forKey: .landMark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(addressline2, forKey: .addressline2)

            try? container.encodeIfPresent(addressline1, forKey: .addressline1)

            try? container.encode(ownershipType, forKey: .ownershipType)

            try? container.encode(landMark, forKey: .landMark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
