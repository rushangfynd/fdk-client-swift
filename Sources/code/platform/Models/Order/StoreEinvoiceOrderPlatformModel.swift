

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreEinvoice
         Used By: Order
     */

    class StoreEinvoice: Codable {
        public var username: String?

        public var enabled: Bool

        public var user: String?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case enabled

            case user

            case password
        }

        public init(enabled: Bool, password: String? = nil, user: String? = nil, username: String? = nil) {
            self.username = username

            self.enabled = enabled

            self.user = user

            self.password = password
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreEinvoice
         Used By: Order
     */

    class StoreEinvoice: Codable {
        public var username: String?

        public var enabled: Bool

        public var user: String?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case enabled

            case user

            case password
        }

        public init(enabled: Bool, password: String? = nil, user: String? = nil, username: String? = nil) {
            self.username = username

            self.enabled = enabled

            self.user = user

            self.password = password
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}
