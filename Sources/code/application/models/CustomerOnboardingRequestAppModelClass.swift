

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var marketplaceInfo: MarketplaceInfo?

        public var source: String

        public var personalInfo: UserPersonalInfoInDetails

        public var mcc: String?

        public var aggregator: String

        public var businessInfo: BusinessDetails?

        public var device: DeviceDetails?

        public enum CodingKeys: String, CodingKey {
            case marketplaceInfo = "marketplace_info"

            case source

            case personalInfo = "personal_info"

            case mcc

            case aggregator

            case businessInfo = "business_info"

            case device
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, mcc: String? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.marketplaceInfo = marketplaceInfo

            self.source = source

            self.personalInfo = personalInfo

            self.mcc = mcc

            self.aggregator = aggregator

            self.businessInfo = businessInfo

            self.device = device
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

            do {
                mcc = try container.decode(String.self, forKey: .mcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encode(mcc, forKey: .mcc)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(device, forKey: .device)
        }
    }
}
