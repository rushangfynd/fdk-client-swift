

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var set: InventorySet?

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var returnConfig: ReturnConfig1?

        public var createdBy: UserSerializer?

        public var company: CompanyMeta

        public var quantities: Quantities?

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var meta: [String: Any]?

        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var itemId: Int

        public var manufacturer: ManufacturerResponse

        public var price: PriceMeta

        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var size: String

        public var stage: String?

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var uid: String

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var traceId: String?

        public var weight: WeightResponse

        public var isSet: Bool?

        public var modifiedBy: UserSerializer?

        public var store: StoreMeta

        public var fyndItemCode: String

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case set

            case identifier

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case brand

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case company

            case quantities

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case fragile

            case rawMeta = "raw_meta"

            case fyndMeta = "fynd_meta"

            case meta

            case expirationDate = "expiration_date"

            case dimension

            case itemId = "item_id"

            case manufacturer

            case price

            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case size

            case stage

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case uid

            case totalQuantity = "total_quantity"

            case trader

            case traceId = "trace_id"

            case weight

            case isSet = "is_set"

            case modifiedBy = "modified_by"

            case store

            case fyndItemCode = "fynd_item_code"

            case tags
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.set = set

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.brand = brand

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.company = company

            self.quantities = quantities

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.fyndMeta = fyndMeta

            self.meta = meta

            self.expirationDate = expirationDate

            self.dimension = dimension

            self.itemId = itemId

            self.manufacturer = manufacturer

            self.price = price

            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.size = size

            self.stage = stage

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.uid = uid

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.traceId = traceId

            self.weight = weight

            self.isSet = isSet

            self.modifiedBy = modifiedBy

            self.store = store

            self.fyndItemCode = fyndItemCode

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            price = try container.decode(PriceMeta.self, forKey: .price)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(tags, forKey: .tags)
        }
    }
}
