

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentHandOverCustomerContact
         Used By: Order
     */

    class ShipmentHandOverCustomerContact: Codable {
        public var updatedAt: String

        public var createdAt: String

        public var contactPerson: String

        public var phone: String?

        public var email: String?

        public var version: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case phone

            case email

            case version
        }

        public init(contactPerson: String, createdAt: String, email: String? = nil, phone: String? = nil, updatedAt: String, version: String) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.email = email

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                phone = try container.decode(String.self, forKey: .phone)

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

            version = try container.decode(String.self, forKey: .version)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
