

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var meta: [String: Any]?

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var customJson: [String: Any]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var returnConfig: ReturnConfig1?

        public var identifier: [String: Any]

        public var traceId: String?

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var stage: String?

        public var brand: BrandMeta

        public var size: String

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var fyndItemCode: String

        public var price: PriceMeta

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var weight: WeightResponse

        public var quantities: Quantities?

        public var set: InventorySet?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var countryOfOrigin: String

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case rawMeta = "raw_meta"

            case fragile

            case meta

            case tags

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case trader

            case returnConfig = "return_config"

            case identifier

            case traceId = "trace_id"

            case trackInventory = "track_inventory"

            case company

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case stage

            case brand

            case size

            case manufacturer

            case uid

            case fyndItemCode = "fynd_item_code"

            case price

            case createdBy = "created_by"

            case itemId = "item_id"

            case store

            case weight

            case quantities

            case set

            case addedOnStore = "added_on_store"

            case dimension

            case sellerIdentifier = "seller_identifier"

            case countryOfOrigin = "country_of_origin"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.meta = meta

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.trader = trader

            self.returnConfig = returnConfig

            self.identifier = identifier

            self.traceId = traceId

            self.trackInventory = trackInventory

            self.company = company

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.stage = stage

            self.brand = brand

            self.size = size

            self.manufacturer = manufacturer

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.price = price

            self.createdBy = createdBy

            self.itemId = itemId

            self.store = store

            self.weight = weight

            self.quantities = quantities

            self.set = set

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            size = try container.decode(String.self, forKey: .size)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var meta: [String: Any]?

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var customJson: [String: Any]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var returnConfig: ReturnConfig1?

        public var identifier: [String: Any]

        public var traceId: String?

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var stage: String?

        public var brand: BrandMeta

        public var size: String

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var fyndItemCode: String

        public var price: PriceMeta

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var weight: WeightResponse

        public var quantities: Quantities?

        public var set: InventorySet?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var countryOfOrigin: String

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case rawMeta = "raw_meta"

            case fragile

            case meta

            case tags

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case trader

            case returnConfig = "return_config"

            case identifier

            case traceId = "trace_id"

            case trackInventory = "track_inventory"

            case company

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case stage

            case brand

            case size

            case manufacturer

            case uid

            case fyndItemCode = "fynd_item_code"

            case price

            case createdBy = "created_by"

            case itemId = "item_id"

            case store

            case weight

            case quantities

            case set

            case addedOnStore = "added_on_store"

            case dimension

            case sellerIdentifier = "seller_identifier"

            case countryOfOrigin = "country_of_origin"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.meta = meta

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.trader = trader

            self.returnConfig = returnConfig

            self.identifier = identifier

            self.traceId = traceId

            self.trackInventory = trackInventory

            self.company = company

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.stage = stage

            self.brand = brand

            self.size = size

            self.manufacturer = manufacturer

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.price = price

            self.createdBy = createdBy

            self.itemId = itemId

            self.store = store

            self.weight = weight

            self.quantities = quantities

            self.set = set

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            size = try container.decode(String.self, forKey: .size)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
