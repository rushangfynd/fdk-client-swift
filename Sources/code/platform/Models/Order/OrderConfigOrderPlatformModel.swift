

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var bagEndState: String?

        public var affiliate: Affiliate

        public var createUser: Bool?

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var storeLookup: String?

        public var articleLookup: String?

        public enum CodingKeys: String, CodingKey {
            case bagEndState = "bag_end_state"

            case affiliate

            case createUser = "create_user"

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case storeLookup = "store_lookup"

            case articleLookup = "article_lookup"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.bagEndState = bagEndState

            self.affiliate = affiliate

            self.createUser = createUser

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.storeLookup = storeLookup

            self.articleLookup = articleLookup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            do {
                createUser = try container.decode(Bool.self, forKey: .createUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                storeLookup = try container.decode(String.self, forKey: .storeLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderConfig
         Used By: Order
     */

    class OrderConfig: Codable {
        public var bagEndState: String?

        public var affiliate: Affiliate

        public var createUser: Bool?

        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]

        public var storeLookup: String?

        public var articleLookup: String?

        public enum CodingKeys: String, CodingKey {
            case bagEndState = "bag_end_state"

            case affiliate

            case createUser = "create_user"

            case affiliateStoreIdMapping = "affiliate_store_id_mapping"

            case storeLookup = "store_lookup"

            case articleLookup = "article_lookup"
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, createUser: Bool? = nil, storeLookup: String? = nil) {
            self.bagEndState = bagEndState

            self.affiliate = affiliate

            self.createUser = createUser

            self.affiliateStoreIdMapping = affiliateStoreIdMapping

            self.storeLookup = storeLookup

            self.articleLookup = articleLookup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagEndState = try container.decode(String.self, forKey: .bagEndState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliate = try container.decode(Affiliate.self, forKey: .affiliate)

            do {
                createUser = try container.decode(Bool.self, forKey: .createUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)

            do {
                storeLookup = try container.decode(String.self, forKey: .storeLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleLookup = try container.decode(String.self, forKey: .articleLookup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)

            try? container.encodeIfPresent(createUser, forKey: .createUser)

            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)

            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)

            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
        }
    }
}
