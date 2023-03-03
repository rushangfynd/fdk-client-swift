

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var payoutsAggregators: [[String: Any]]

        public var transferType: String

        public var uniqueTransferNo: [String: Any]

        public var isActive: Bool

        public var customers: [String: Any]

        public var isDefault: Bool

        public var moreAttributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"

            case customers

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive

            self.customers = customers

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            customers = try container.decode([String: Any].self, forKey: .customers)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
        }
    }
}
