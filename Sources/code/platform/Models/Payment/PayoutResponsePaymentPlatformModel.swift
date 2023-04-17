

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var payouts: [String: Any]

        public var users: [String: Any]

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var transferType: String

        public var aggregator: String

        public var created: Bool

        public var isActive: Bool

        public var bankDetails: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case payouts

            case users

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case aggregator

            case created

            case isActive = "is_active"

            case bankDetails = "bank_details"

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.payouts = payouts

            self.users = users

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.aggregator = aggregator

            self.created = created

            self.isActive = isActive

            self.bankDetails = bankDetails

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var payouts: [String: Any]

        public var users: [String: Any]

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var transferType: String

        public var aggregator: String

        public var created: Bool

        public var isActive: Bool

        public var bankDetails: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case payouts

            case users

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case aggregator

            case created

            case isActive = "is_active"

            case bankDetails = "bank_details"

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.payouts = payouts

            self.users = users

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.aggregator = aggregator

            self.created = created

            self.isActive = isActive

            self.bankDetails = bankDetails

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
