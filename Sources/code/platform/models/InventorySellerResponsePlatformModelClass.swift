

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var isActive: Bool?

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var trackInventory: Bool?

        public var countryOfOrigin: String

        public var fyndArticleCode: String

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var uid: String

        public var size: String

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var isSet: Bool?

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var company: CompanyMeta

        public var identifier: [String: Any]

        public var price: PriceMeta

        public var tags: [String]?

        public var meta: [String: Any]?

        public var createdBy: UserSerializer?

        public var totalQuantity: Int

        public var set: InventorySet?

        public var store: StoreMeta

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var fragile: Bool

        public var stage: String?

        public var weight: WeightResponse

        public var traceId: String?

        public var fyndItemCode: String

        public var returnConfig: ReturnConfig1?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case trackInventory = "track_inventory"

            case countryOfOrigin = "country_of_origin"

            case fyndArticleCode = "fynd_article_code"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case trader

            case rawMeta = "raw_meta"

            case uid

            case size

            case addedOnStore = "added_on_store"

            case brand

            case quantities

            case isSet = "is_set"

            case manufacturer

            case expirationDate = "expiration_date"

            case company

            case identifier

            case price

            case tags

            case meta

            case createdBy = "created_by"

            case totalQuantity = "total_quantity"

            case set

            case store

            case dimension

            case sellerIdentifier = "seller_identifier"

            case fragile

            case stage

            case weight

            case traceId = "trace_id"

            case fyndItemCode = "fynd_item_code"

            case returnConfig = "return_config"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.trackInventory = trackInventory

            self.countryOfOrigin = countryOfOrigin

            self.fyndArticleCode = fyndArticleCode

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.trader = trader

            self.rawMeta = rawMeta

            self.uid = uid

            self.size = size

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.quantities = quantities

            self.isSet = isSet

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.company = company

            self.identifier = identifier

            self.price = price

            self.tags = tags

            self.meta = meta

            self.createdBy = createdBy

            self.totalQuantity = totalQuantity

            self.set = set

            self.store = store

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.fragile = fragile

            self.stage = stage

            self.weight = weight

            self.traceId = traceId

            self.fyndItemCode = fyndItemCode

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            size = try container.decode(String.self, forKey: .size)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
