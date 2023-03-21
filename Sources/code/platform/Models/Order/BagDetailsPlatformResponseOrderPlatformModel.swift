

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var article: Article

        public var restorePromos: [String: Any]?

        public var currentOperationalStatus: BagStatusHistory

        public var reasons: [[String: Any]]?

        public var shipmentId: String?

        public var operationalStatus: String?

        public var item: Item

        public var tags: [String]?

        public var prices: Prices

        public var appliedPromos: [[String: Any]]?

        public var meta: BagMeta?

        public var orderIntegrationId: String?

        public var financialBreakup: [FinancialBreakup]

        public var qcRequired: [String: Any]?

        public var sellerIdentifier: String?

        public var status: BagReturnableCancelableStatus

        public var journeyType: String

        public var currentStatus: BagStatusHistory

        public var bId: Int

        public var bagStatusHistory: BagStatusHistory?

        public var orderingStore: Store?

        public var dates: Dates?

        public var identifier: String?

        public var lineNumber: Int?

        public var noOfBagsOrder: Int?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var articleDetails: ArticleDetails?

        public var quantity: Double?

        public var bagUpdateTime: Double?

        public var brand: Brand

        public var displayName: String?

        public var bType: String?

        public var restoreCoupon: Bool?

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagStatus: [BagStatusHistory]

        public var gstDetails: BagGSTDetails

        public var originalBagList: [Int]?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case article

            case restorePromos = "restore_promos"

            case currentOperationalStatus = "current_operational_status"

            case reasons

            case shipmentId = "shipment_id"

            case operationalStatus = "operational_status"

            case item

            case tags

            case prices

            case appliedPromos = "applied_promos"

            case meta

            case orderIntegrationId = "order_integration_id"

            case financialBreakup = "financial_breakup"

            case qcRequired = "qc_required"

            case sellerIdentifier = "seller_identifier"

            case status

            case journeyType = "journey_type"

            case currentStatus = "current_status"

            case bId = "b_id"

            case bagStatusHistory = "bag_status_history"

            case orderingStore = "ordering_store"

            case dates

            case identifier

            case lineNumber = "line_number"

            case noOfBagsOrder = "no_of_bags_order"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case articleDetails = "article_details"

            case quantity

            case bagUpdateTime = "bag_update_time"

            case brand

            case displayName = "display_name"

            case bType = "b_type"

            case restoreCoupon = "restore_coupon"

            case affiliateBagDetails = "affiliate_bag_details"

            case bagStatus = "bag_status"

            case gstDetails = "gst_details"

            case originalBagList = "original_bag_list"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.article = article

            self.restorePromos = restorePromos

            self.currentOperationalStatus = currentOperationalStatus

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.operationalStatus = operationalStatus

            self.item = item

            self.tags = tags

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.financialBreakup = financialBreakup

            self.qcRequired = qcRequired

            self.sellerIdentifier = sellerIdentifier

            self.status = status

            self.journeyType = journeyType

            self.currentStatus = currentStatus

            self.bId = bId

            self.bagStatusHistory = bagStatusHistory

            self.orderingStore = orderingStore

            self.dates = dates

            self.identifier = identifier

            self.lineNumber = lineNumber

            self.noOfBagsOrder = noOfBagsOrder

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.articleDetails = articleDetails

            self.quantity = quantity

            self.bagUpdateTime = bagUpdateTime

            self.brand = brand

            self.displayName = displayName

            self.bType = bType

            self.restoreCoupon = restoreCoupon

            self.affiliateBagDetails = affiliateBagDetails

            self.bagStatus = bagStatus

            self.gstDetails = gstDetails

            self.originalBagList = originalBagList

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            article = try container.decode(Article.self, forKey: .article)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var article: Article

        public var restorePromos: [String: Any]?

        public var currentOperationalStatus: BagStatusHistory

        public var reasons: [[String: Any]]?

        public var shipmentId: String?

        public var operationalStatus: String?

        public var item: Item

        public var tags: [String]?

        public var prices: Prices

        public var appliedPromos: [[String: Any]]?

        public var meta: BagMeta?

        public var orderIntegrationId: String?

        public var financialBreakup: [FinancialBreakup]

        public var qcRequired: [String: Any]?

        public var sellerIdentifier: String?

        public var status: BagReturnableCancelableStatus

        public var journeyType: String

        public var currentStatus: BagStatusHistory

        public var bId: Int

        public var bagStatusHistory: BagStatusHistory?

        public var orderingStore: Store?

        public var dates: Dates?

        public var identifier: String?

        public var lineNumber: Int?

        public var noOfBagsOrder: Int?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var articleDetails: ArticleDetails?

        public var quantity: Double?

        public var bagUpdateTime: Double?

        public var brand: Brand

        public var displayName: String?

        public var bType: String?

        public var restoreCoupon: Bool?

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagStatus: [BagStatusHistory]

        public var gstDetails: BagGSTDetails

        public var originalBagList: [Int]?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case article

            case restorePromos = "restore_promos"

            case currentOperationalStatus = "current_operational_status"

            case reasons

            case shipmentId = "shipment_id"

            case operationalStatus = "operational_status"

            case item

            case tags

            case prices

            case appliedPromos = "applied_promos"

            case meta

            case orderIntegrationId = "order_integration_id"

            case financialBreakup = "financial_breakup"

            case qcRequired = "qc_required"

            case sellerIdentifier = "seller_identifier"

            case status

            case journeyType = "journey_type"

            case currentStatus = "current_status"

            case bId = "b_id"

            case bagStatusHistory = "bag_status_history"

            case orderingStore = "ordering_store"

            case dates

            case identifier

            case lineNumber = "line_number"

            case noOfBagsOrder = "no_of_bags_order"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case articleDetails = "article_details"

            case quantity

            case bagUpdateTime = "bag_update_time"

            case brand

            case displayName = "display_name"

            case bType = "b_type"

            case restoreCoupon = "restore_coupon"

            case affiliateBagDetails = "affiliate_bag_details"

            case bagStatus = "bag_status"

            case gstDetails = "gst_details"

            case originalBagList = "original_bag_list"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.article = article

            self.restorePromos = restorePromos

            self.currentOperationalStatus = currentOperationalStatus

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.operationalStatus = operationalStatus

            self.item = item

            self.tags = tags

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.financialBreakup = financialBreakup

            self.qcRequired = qcRequired

            self.sellerIdentifier = sellerIdentifier

            self.status = status

            self.journeyType = journeyType

            self.currentStatus = currentStatus

            self.bId = bId

            self.bagStatusHistory = bagStatusHistory

            self.orderingStore = orderingStore

            self.dates = dates

            self.identifier = identifier

            self.lineNumber = lineNumber

            self.noOfBagsOrder = noOfBagsOrder

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.articleDetails = articleDetails

            self.quantity = quantity

            self.bagUpdateTime = bagUpdateTime

            self.brand = brand

            self.displayName = displayName

            self.bType = bType

            self.restoreCoupon = restoreCoupon

            self.affiliateBagDetails = affiliateBagDetails

            self.bagStatus = bagStatus

            self.gstDetails = gstDetails

            self.originalBagList = originalBagList

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            article = try container.decode(Article.self, forKey: .article)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}
