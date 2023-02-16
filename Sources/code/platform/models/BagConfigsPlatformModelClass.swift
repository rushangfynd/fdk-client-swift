

import Foundation
public extension PlatformClient {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isReturnable: Bool

        public var isCustomerReturnAllowed: Bool

        public var canBeCancelled: Bool

        public var isActive: Bool

        public var enableTracking: Bool

        public var allowForceReturn: Bool

        public enum CodingKeys: String, CodingKey {
            case isReturnable = "is_returnable"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case canBeCancelled = "can_be_cancelled"

            case isActive = "is_active"

            case enableTracking = "enable_tracking"

            case allowForceReturn = "allow_force_return"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isReturnable = isReturnable

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.canBeCancelled = canBeCancelled

            self.isActive = isActive

            self.enableTracking = enableTracking

            self.allowForceReturn = allowForceReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
        }
    }
}
