

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: StoreManagerSerializer
         Used By: Catalog
     */
    class StoreManagerSerializer: Codable {
        public var mobileNo: SellerPhoneNumber?

        public var name: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case mobileNo = "mobile_no"

            case name

            case email
        }

        public init(email: String? = nil, mobileNo: SellerPhoneNumber? = nil, name: String? = nil) {
            self.mobileNo = mobileNo

            self.name = name

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
