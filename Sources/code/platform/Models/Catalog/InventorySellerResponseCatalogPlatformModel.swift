

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var price: PriceMeta

        public var traceId: String?

        public var store: StoreMeta

        public var weight: WeightResponse

        public var identifier: [String: Any]

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var sellerIdentifier: String

        public var size: String

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var taxIdentifier: [String: Any]?

        public var fyndItemCode: String

        public var returnConfig: ReturnConfig1?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var expirationDate: String?

        public var tags: [String]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var uid: String

        public var customJson: [String: Any]?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case stage

            case price

            case traceId = "trace_id"

            case store

            case weight

            case identifier

            case totalQuantity = "total_quantity"

            case brand

            case sellerIdentifier = "seller_identifier"

            case size

            case quantities

            case rawMeta = "raw_meta"

            case trader

            case isActive = "is_active"

            case manufacturer

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case fragile

            case taxIdentifier = "tax_identifier"

            case fyndItemCode = "fynd_item_code"

            case returnConfig = "return_config"

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case expirationDate = "expiration_date"

            case tags

            case addedOnStore = "added_on_store"

            case company

            case set

            case meta

            case dimension

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case uid

            case customJson = "_custom_json"

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.price = price

            self.traceId = traceId

            self.store = store

            self.weight = weight

            self.identifier = identifier

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.trader = trader

            self.isActive = isActive

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.taxIdentifier = taxIdentifier

            self.fyndItemCode = fyndItemCode

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.expirationDate = expirationDate

            self.tags = tags

            self.addedOnStore = addedOnStore

            self.company = company

            self.set = set

            self.meta = meta

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.customJson = customJson

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var price: PriceMeta

        public var traceId: String?

        public var store: StoreMeta

        public var weight: WeightResponse

        public var identifier: [String: Any]

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var sellerIdentifier: String

        public var size: String

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var taxIdentifier: [String: Any]?

        public var fyndItemCode: String

        public var returnConfig: ReturnConfig1?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var expirationDate: String?

        public var tags: [String]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var uid: String

        public var customJson: [String: Any]?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case stage

            case price

            case traceId = "trace_id"

            case store

            case weight

            case identifier

            case totalQuantity = "total_quantity"

            case brand

            case sellerIdentifier = "seller_identifier"

            case size

            case quantities

            case rawMeta = "raw_meta"

            case trader

            case isActive = "is_active"

            case manufacturer

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case fragile

            case taxIdentifier = "tax_identifier"

            case fyndItemCode = "fynd_item_code"

            case returnConfig = "return_config"

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case expirationDate = "expiration_date"

            case tags

            case addedOnStore = "added_on_store"

            case company

            case set

            case meta

            case dimension

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case uid

            case customJson = "_custom_json"

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.price = price

            self.traceId = traceId

            self.store = store

            self.weight = weight

            self.identifier = identifier

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.trader = trader

            self.isActive = isActive

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.taxIdentifier = taxIdentifier

            self.fyndItemCode = fyndItemCode

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.expirationDate = expirationDate

            self.tags = tags

            self.addedOnStore = addedOnStore

            self.company = company

            self.set = set

            self.meta = meta

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.customJson = customJson

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
