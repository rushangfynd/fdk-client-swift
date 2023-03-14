

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var limit: Int

        public var usages: Int

        public var remainingLimit: Int

        public var userId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case limit

            case usages

            case remainingLimit = "remaining_limit"

            case userId = "user_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.limit = limit

            self.usages = usages

            self.remainingLimit = remainingLimit

            self.userId = userId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            userId = try container.decode(String.self, forKey: .userId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var limit: Int

        public var usages: Int

        public var remainingLimit: Int

        public var userId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case limit

            case usages

            case remainingLimit = "remaining_limit"

            case userId = "user_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.limit = limit

            self.usages = usages

            self.remainingLimit = remainingLimit

            self.userId = userId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            userId = try container.decode(String.self, forKey: .userId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}