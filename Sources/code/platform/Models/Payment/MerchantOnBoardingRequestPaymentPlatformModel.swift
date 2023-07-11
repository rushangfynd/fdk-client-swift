

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var userId: String

        public var aggregator: String

        public var appId: String

        public var status: String

        public var creditLineId: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case aggregator

            case appId = "app_id"

            case status

            case creditLineId = "credit_line_id"
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.userId = userId

            self.aggregator = aggregator

            self.appId = appId

            self.status = status

            self.creditLineId = creditLineId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)

            status = try container.decode(String.self, forKey: .status)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: MerchantOnBoardingRequest
         Used By: Payment
     */

    class MerchantOnBoardingRequest: Codable {
        public var userId: String

        public var aggregator: String

        public var appId: String

        public var status: String

        public var creditLineId: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case aggregator

            case appId = "app_id"

            case status

            case creditLineId = "credit_line_id"
        }

        public init(aggregator: String, appId: String, creditLineId: String, status: String, userId: String) {
            self.userId = userId

            self.aggregator = aggregator

            self.appId = appId

            self.status = status

            self.creditLineId = creditLineId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            appId = try container.decode(String.self, forKey: .appId)

            status = try container.decode(String.self, forKey: .status)

            creditLineId = try container.decode(String.self, forKey: .creditLineId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(creditLineId, forKey: .creditLineId)
        }
    }
}
