

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var addCardEnabled: Bool?

        public var aggregatorName: String?

        public var logoUrl: PaymentModeLogo?

        public var displayName: String

        public var name: String

        public var displayPriority: Int

        public var logo: String?

        public var list: [PaymentModeList]?

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case addCardEnabled = "add_card_enabled"

            case aggregatorName = "aggregator_name"

            case logoUrl = "logo_url"

            case displayName = "display_name"

            case name

            case displayPriority = "display_priority"

            case logo

            case list

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.addCardEnabled = addCardEnabled

            self.aggregatorName = aggregatorName

            self.logoUrl = logoUrl

            self.displayName = displayName

            self.name = name

            self.displayPriority = displayPriority

            self.logo = logo

            self.list = list

            self.anonymousEnable = anonymousEnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }
}
