

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSizePriceResponseV3
         Used By: Catalog
     */
    class ProductSizePriceResponseV3: Codable {
        public var strategyWiseListing: [StrategyWiseListingSchemaV3]?

        public var isGift: Bool?

        public var groupedAttributes: [SellerGroupAttributes]?

        public var returnConfig: ReturnConfigSchemaV3?

        public var set: ProductSetV3?

        public var articleId: String?

        public var discount: String?

        public var isCod: Bool?

        public var itemType: String?

        public var store: StoreV3?

        public var specialBadge: String?

        public var quantity: Int?

        public var longLat: [Double]?

        public var seller: SellerV3?

        public var pincode: Int?

        public var price: ProductStockPriceV3?

        public var sellerCount: Int?

        public var pricePerUnit: ProductStockUnitPriceV3?

        public var pricePerPiece: ProductStockPriceV3?

        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV3]?

        public var articleAssignment: ArticleAssignmentV3?

        public enum CodingKeys: String, CodingKey {
            case strategyWiseListing = "strategy_wise_listing"

            case isGift = "is_gift"

            case groupedAttributes = "grouped_attributes"

            case returnConfig = "return_config"

            case set

            case articleId = "article_id"

            case discount

            case isCod = "is_cod"

            case itemType = "item_type"

            case store

            case specialBadge = "special_badge"

            case quantity

            case longLat = "long_lat"

            case seller

            case pincode

            case price

            case sellerCount = "seller_count"

            case pricePerUnit = "price_per_unit"

            case pricePerPiece = "price_per_piece"

            case marketplaceAttributes = "marketplace_attributes"

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: ArticleAssignmentV3? = nil, articleId: String? = nil, discount: String? = nil, groupedAttributes: [SellerGroupAttributes]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, itemType: String? = nil, longLat: [Double]? = nil, marketplaceAttributes: [MarketPlaceSttributesSchemaV3]? = nil, pincode: Int? = nil, price: ProductStockPriceV3? = nil, pricePerPiece: ProductStockPriceV3? = nil, pricePerUnit: ProductStockUnitPriceV3? = nil, quantity: Int? = nil, returnConfig: ReturnConfigSchemaV3? = nil, seller: SellerV3? = nil, sellerCount: Int? = nil, set: ProductSetV3? = nil, specialBadge: String? = nil, store: StoreV3? = nil, strategyWiseListing: [StrategyWiseListingSchemaV3]? = nil) {
            self.strategyWiseListing = strategyWiseListing

            self.isGift = isGift

            self.groupedAttributes = groupedAttributes

            self.returnConfig = returnConfig

            self.set = set

            self.articleId = articleId

            self.discount = discount

            self.isCod = isCod

            self.itemType = itemType

            self.store = store

            self.specialBadge = specialBadge

            self.quantity = quantity

            self.longLat = longLat

            self.seller = seller

            self.pincode = pincode

            self.price = price

            self.sellerCount = sellerCount

            self.pricePerUnit = pricePerUnit

            self.pricePerPiece = pricePerPiece

            self.marketplaceAttributes = marketplaceAttributes

            self.articleAssignment = articleAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV3].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([SellerGroupAttributes].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigSchemaV3.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(ProductSetV3.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreV3.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                specialBadge = try container.decode(String.self, forKey: .specialBadge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longLat = try container.decode([Double].self, forKey: .longLat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(SellerV3.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPriceV3.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerCount = try container.decode(Int.self, forKey: .sellerCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductStockUnitPriceV3.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerPiece = try container.decode(ProductStockPriceV3.self, forKey: .pricePerPiece)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV3].self, forKey: .marketplaceAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentV3.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(longLat, forKey: .longLat)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)

            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }
}
