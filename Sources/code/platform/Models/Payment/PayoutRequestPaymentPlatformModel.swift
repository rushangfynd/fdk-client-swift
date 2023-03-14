

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var users: [String: Any]

        public var aggregator: String

        public var transferType: String

        public var uniqueExternalId: String

        public var bankDetails: PayoutBankDetails

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case users

            case aggregator

            case transferType = "transfer_type"

            case uniqueExternalId = "unique_external_id"

            case bankDetails = "bank_details"

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.users = users

            self.aggregator = aggregator

            self.transferType = transferType

            self.uniqueExternalId = uniqueExternalId

            self.bankDetails = bankDetails

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var users: [String: Any]

        public var aggregator: String

        public var transferType: String

        public var uniqueExternalId: String

        public var bankDetails: PayoutBankDetails

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case users

            case aggregator

            case transferType = "transfer_type"

            case uniqueExternalId = "unique_external_id"

            case bankDetails = "bank_details"

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.users = users

            self.aggregator = aggregator

            self.transferType = transferType

            self.uniqueExternalId = uniqueExternalId

            self.bankDetails = bankDetails

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}