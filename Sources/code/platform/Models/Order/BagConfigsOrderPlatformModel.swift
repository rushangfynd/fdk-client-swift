

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public var isActive: Bool

        public var isCustomerReturnAllowed: Bool

        public var enableTracking: Bool

        public var canBeCancelled: Bool

        public enum CodingKeys: String, CodingKey {
            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"

            case isActive = "is_active"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case enableTracking = "enable_tracking"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn

            self.isActive = isActive

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.enableTracking = enableTracking

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public var isActive: Bool

        public var isCustomerReturnAllowed: Bool

        public var enableTracking: Bool

        public var canBeCancelled: Bool

        public enum CodingKeys: String, CodingKey {
            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"

            case isActive = "is_active"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case enableTracking = "enable_tracking"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn

            self.isActive = isActive

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.enableTracking = enableTracking

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}
