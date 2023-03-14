

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var success: Bool

        public var excludedFields: [String]

        public var created: Bool

        public var displayFields: [String]

        public var appId: String

        public var aggregators: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case success

            case excludedFields = "excluded_fields"

            case created

            case displayFields = "display_fields"

            case appId = "app_id"

            case aggregators
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.success = success

            self.excludedFields = excludedFields

            self.created = created

            self.displayFields = displayFields

            self.appId = appId

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            created = try container.decode(Bool.self, forKey: .created)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var success: Bool

        public var excludedFields: [String]

        public var created: Bool

        public var displayFields: [String]

        public var appId: String

        public var aggregators: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case success

            case excludedFields = "excluded_fields"

            case created

            case displayFields = "display_fields"

            case appId = "app_id"

            case aggregators
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.success = success

            self.excludedFields = excludedFields

            self.created = created

            self.displayFields = displayFields

            self.appId = appId

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            created = try container.decode(Bool.self, forKey: .created)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}