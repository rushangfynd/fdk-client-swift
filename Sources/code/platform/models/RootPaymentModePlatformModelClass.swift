

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var list: [PaymentModeList]?

        public var logoUrl: PaymentModeLogo?

        public var anonymousEnable: Bool?

        public var displayName: String

        public var addCardEnabled: Bool?

        public var displayPriority: Int

        public var logo: String?

        public var name: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case list

            case logoUrl = "logo_url"

            case anonymousEnable = "anonymous_enable"

            case displayName = "display_name"

            case addCardEnabled = "add_card_enabled"

            case displayPriority = "display_priority"

            case logo

            case name

            case aggregatorName = "aggregator_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.list = list

            self.logoUrl = logoUrl

            self.anonymousEnable = anonymousEnable

            self.displayName = displayName

            self.addCardEnabled = addCardEnabled

            self.displayPriority = displayPriority

            self.logo = logo

            self.name = name

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(aggregatorName, forKey: .aggregatorName)
        }
    }
}
