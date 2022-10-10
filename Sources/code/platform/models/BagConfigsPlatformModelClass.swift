

import Foundation
public extension PlatformClient {
    /*
         Model: BagConfigs
         Used By: Orders
     */

    class BagConfigs: Codable {
        public var isCustomerReturnAllowed: Bool

        public var allowForceReturn: Bool

        public var enableTracking: Bool

        public var isActive: Bool

        public var isReturnable: Bool

        public var canBeCancelled: Bool

        public enum CodingKeys: String, CodingKey {
            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case allowForceReturn = "allow_force_return"

            case enableTracking = "enable_tracking"

            case isActive = "is_active"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.allowForceReturn = allowForceReturn

            self.enableTracking = enableTracking

            self.isActive = isActive

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}
