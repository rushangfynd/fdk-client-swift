

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: UserSerializer
         Used By: CompanyProfile
     */

    class UserSerializer: Codable {
        public var contact: String?

        public var userId: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case contact

            case userId = "user_id"

            case username
        }

        public init(contact: String? = nil, username: String? = nil, userId: String? = nil) {
            self.contact = contact

            self.userId = userId

            self.username = username
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
