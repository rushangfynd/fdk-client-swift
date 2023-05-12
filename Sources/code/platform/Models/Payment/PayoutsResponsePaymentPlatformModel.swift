

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var transferType: String

        public var customers: [String: Any]

        public var isDefault: Bool

        public var isActive: Bool

        public var uniqueTransferNo: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var moreAttributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case customers

            case isDefault = "is_default"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.transferType = transferType

            self.customers = customers

            self.isDefault = isDefault

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var transferType: String

        public var customers: [String: Any]

        public var isDefault: Bool

        public var isActive: Bool

        public var uniqueTransferNo: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var moreAttributes: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case customers

            case isDefault = "is_default"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.transferType = transferType

            self.customers = customers

            self.isDefault = isDefault

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
        }
    }
}
