

import Foundation
public extension PlatformClient {
    /*
         Model: AssignStoreRequestValidator
         Used By: CompanyProfile
     */

    class AssignStoreRequestValidator: Codable {
        public var pincode: String?

        public var storeIds: [Int]?

        public var articles: [_AssignStoreArticle]?

        public var companyId: Int?

        public var channelIdentifier: String?

        public var channelType: String?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case storeIds = "store_ids"

            case articles

            case companyId = "company_id"

            case channelIdentifier = "channel_identifier"

            case channelType = "channel_type"

            case appId = "app_id"
        }

        public init(appId: String? = nil, articles: [_AssignStoreArticle]? = nil, channelIdentifier: String? = nil, channelType: String? = nil, companyId: Int? = nil, pincode: String? = nil, storeIds: [Int]? = nil) {
            self.pincode = pincode

            self.storeIds = storeIds

            self.articles = articles

            self.companyId = companyId

            self.channelIdentifier = channelIdentifier

            self.channelType = channelType

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode([_AssignStoreArticle].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}