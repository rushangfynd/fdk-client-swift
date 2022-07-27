

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var isAnonymousUser: Bool

        public var email: String

        public var avisUserId: String

        public var firstName: String

        public var uid: Int

        public var lastName: String

        public var mobile: String

        public var gender: String

        public enum CodingKeys: String, CodingKey {
            case isAnonymousUser = "is_anonymous_user"

            case email

            case avisUserId = "avis_user_id"

            case firstName = "first_name"

            case uid

            case lastName = "last_name"

            case mobile

            case gender
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.isAnonymousUser = isAnonymousUser

            self.email = email

            self.avisUserId = avisUserId

            self.firstName = firstName

            self.uid = uid

            self.lastName = lastName

            self.mobile = mobile

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            email = try container.decode(String.self, forKey: .email)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            firstName = try container.decode(String.self, forKey: .firstName)

            uid = try container.decode(Int.self, forKey: .uid)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(String.self, forKey: .mobile)

            gender = try container.decode(String.self, forKey: .gender)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(gender, forKey: .gender)
        }
    }
}
