

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var stage: String?

        public var isSet: Bool?

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public var company: CompanyMeta

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var set: InventorySet?

        public var manufacturer: ManufacturerResponse

        public var size: String

        public var quantities: Quantities?

        public var price: PriceMeta

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var trackInventory: Bool?

        public var countryOfOrigin: String

        public var itemId: Int

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var fragile: Bool

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var sellerIdentifier: String

        public var addedOnStore: String?

        public var store: StoreMeta

        public var uid: String

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case fyndMeta = "fynd_meta"

            case returnConfig = "return_config"

            case weight

            case stage

            case isSet = "is_set"

            case isActive = "is_active"

            case trader

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"

            case company

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case set

            case manufacturer

            case size

            case quantities

            case price

            case dimension

            case expirationDate = "expiration_date"

            case trackInventory = "track_inventory"

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"

            case createdBy = "created_by"

            case identifier

            case brand

            case meta

            case totalQuantity = "total_quantity"

            case fragile

            case tags

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case sellerIdentifier = "seller_identifier"

            case addedOnStore = "added_on_store"

            case store

            case uid

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndMeta = fyndMeta

            self.returnConfig = returnConfig

            self.weight = weight

            self.stage = stage

            self.isSet = isSet

            self.isActive = isActive

            self.trader = trader

            self.customJson = customJson

            self.rawMeta = rawMeta

            self.company = company

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.set = set

            self.manufacturer = manufacturer

            self.size = size

            self.quantities = quantities

            self.price = price

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.trackInventory = trackInventory

            self.countryOfOrigin = countryOfOrigin

            self.itemId = itemId

            self.createdBy = createdBy

            self.identifier = identifier

            self.brand = brand

            self.meta = meta

            self.totalQuantity = totalQuantity

            self.fragile = fragile

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.sellerIdentifier = sellerIdentifier

            self.addedOnStore = addedOnStore

            self.store = store

            self.uid = uid

            self.fyndItemCode = fyndItemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var stage: String?

        public var isSet: Bool?

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public var company: CompanyMeta

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var set: InventorySet?

        public var manufacturer: ManufacturerResponse

        public var size: String

        public var quantities: Quantities?

        public var price: PriceMeta

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var trackInventory: Bool?

        public var countryOfOrigin: String

        public var itemId: Int

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var fragile: Bool

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var sellerIdentifier: String

        public var addedOnStore: String?

        public var store: StoreMeta

        public var uid: String

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case fyndMeta = "fynd_meta"

            case returnConfig = "return_config"

            case weight

            case stage

            case isSet = "is_set"

            case isActive = "is_active"

            case trader

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"

            case company

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case set

            case manufacturer

            case size

            case quantities

            case price

            case dimension

            case expirationDate = "expiration_date"

            case trackInventory = "track_inventory"

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"

            case createdBy = "created_by"

            case identifier

            case brand

            case meta

            case totalQuantity = "total_quantity"

            case fragile

            case tags

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case sellerIdentifier = "seller_identifier"

            case addedOnStore = "added_on_store"

            case store

            case uid

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndMeta = fyndMeta

            self.returnConfig = returnConfig

            self.weight = weight

            self.stage = stage

            self.isSet = isSet

            self.isActive = isActive

            self.trader = trader

            self.customJson = customJson

            self.rawMeta = rawMeta

            self.company = company

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.set = set

            self.manufacturer = manufacturer

            self.size = size

            self.quantities = quantities

            self.price = price

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.trackInventory = trackInventory

            self.countryOfOrigin = countryOfOrigin

            self.itemId = itemId

            self.createdBy = createdBy

            self.identifier = identifier

            self.brand = brand

            self.meta = meta

            self.totalQuantity = totalQuantity

            self.fragile = fragile

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.sellerIdentifier = sellerIdentifier

            self.addedOnStore = addedOnStore

            self.store = store

            self.uid = uid

            self.fyndItemCode = fyndItemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}
