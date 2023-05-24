

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagReturnableCancelableStatus1
         Used By: Order
     */

    class BagReturnableCancelableStatus1: Codable {
        public var isActive: Bool

        public var enableTracking: Bool

        public var isCustomerReturnAllowed: Bool

        public var isReturnable: Bool

        public var canBeCancelled: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case enableTracking = "enable_tracking"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isActive = isActive

            self.enableTracking = enableTracking

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagReturnableCancelableStatus1
         Used By: Order
     */

    class BagReturnableCancelableStatus1: Codable {
        public var isActive: Bool

        public var enableTracking: Bool

        public var isCustomerReturnAllowed: Bool

        public var isReturnable: Bool

        public var canBeCancelled: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case enableTracking = "enable_tracking"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isActive = isActive

            self.enableTracking = enableTracking

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}