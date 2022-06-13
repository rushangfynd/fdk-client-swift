

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var customers: [String: Any]

        public var transferType: String

        public var isDefault: Bool

        public var isActive: Bool

        public var moreAttributes: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case customers

            case transferType = "transfer_type"

            case isDefault = "is_default"

            case isActive = "is_active"

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case payoutsAggregators = "payouts_aggregators"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.customers = customers

            self.transferType = transferType

            self.isDefault = isDefault

            self.isActive = isActive

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.payoutsAggregators = payoutsAggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode([String: Any].self, forKey: .customers)

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
        }
    }
}
