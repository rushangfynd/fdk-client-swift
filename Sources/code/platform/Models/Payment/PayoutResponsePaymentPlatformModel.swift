

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var success: Bool

        public var paymentStatus: String

        public var uniqueTransferNo: String

        public var created: Bool

        public var transferType: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case bankDetails = "bank_details"

            case payouts

            case users

            case success

            case paymentStatus = "payment_status"

            case uniqueTransferNo = "unique_transfer_no"

            case created

            case transferType = "transfer_type"

            case aggregator
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.users = users

            self.success = success

            self.paymentStatus = paymentStatus

            self.uniqueTransferNo = uniqueTransferNo

            self.created = created

            self.transferType = transferType

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            created = try container.decode(Bool.self, forKey: .created)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var success: Bool

        public var paymentStatus: String

        public var uniqueTransferNo: String

        public var created: Bool

        public var transferType: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case bankDetails = "bank_details"

            case payouts

            case users

            case success

            case paymentStatus = "payment_status"

            case uniqueTransferNo = "unique_transfer_no"

            case created

            case transferType = "transfer_type"

            case aggregator
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.users = users

            self.success = success

            self.paymentStatus = paymentStatus

            self.uniqueTransferNo = uniqueTransferNo

            self.created = created

            self.transferType = transferType

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            created = try container.decode(Bool.self, forKey: .created)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
