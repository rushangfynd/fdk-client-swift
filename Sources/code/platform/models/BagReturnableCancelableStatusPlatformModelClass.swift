

import Foundation
public extension PlatformClient {
    /*
         Model: BagReturnableCancelableStatus
         Used By: Order
     */

    class BagReturnableCancelableStatus: Codable {
        public var isCustomerReturnAllowed: Bool

        public var isActive: Bool

        public var canBeCancelled: Bool

        public var isReturnable: Bool

        public var enableTracking: Bool

        public enum CodingKeys: String, CodingKey {
            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isActive = "is_active"

            case canBeCancelled = "can_be_cancelled"

            case isReturnable = "is_returnable"

            case enableTracking = "enable_tracking"
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isActive = isActive

            self.canBeCancelled = canBeCancelled

            self.isReturnable = isReturnable

            self.enableTracking = enableTracking
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
        }
    }
}