

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var businessInfo: BusinessDetails?

        public var device: DeviceDetails?

        public var aggregator: String

        public var personalInfo: UserPersonalInfoInDetails

        public var source: String

        public var marketplaceInfo: MarketplaceInfo?

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case device

            case aggregator

            case personalInfo = "personal_info"

            case source

            case marketplaceInfo = "marketplace_info"
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.businessInfo = businessInfo

            self.device = device

            self.aggregator = aggregator

            self.personalInfo = personalInfo

            self.source = source

            self.marketplaceInfo = marketplaceInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

            source = try container.decode(String.self, forKey: .source)

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)
        }
    }
}
