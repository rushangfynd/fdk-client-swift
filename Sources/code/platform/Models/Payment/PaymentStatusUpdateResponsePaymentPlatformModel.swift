

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var success: Bool?

        public var retry: Bool

        public var status: String

        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case success

            case retry

            case status

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.success = success

            self.retry = retry

            self.status = status

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            retry = try container.decode(Bool.self, forKey: .retry)

            status = try container.decode(String.self, forKey: .status)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(success, forKey: .success)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(redirectUrl, forKey: .redirectUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var success: Bool?

        public var retry: Bool

        public var status: String

        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case success

            case retry

            case status

            case redirectUrl = "redirect_url"
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.success = success

            self.retry = retry

            self.status = status

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            retry = try container.decode(Bool.self, forKey: .retry)

            status = try container.decode(String.self, forKey: .status)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(success, forKey: .success)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(redirectUrl, forKey: .redirectUrl)
        }
    }
}
