

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var isActive: Bool?

        public var returnConfig: ReturnConfig1?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var size: String

        public var expirationDate: String?

        public var brand: BrandMeta

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var set: InventorySet?

        public var price: PriceMeta

        public var trackInventory: Bool?

        public var trader: [Trader1]?

        public var isSet: Bool?

        public var totalQuantity: Int

        public var tags: [String]?

        public var sellerIdentifier: String

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var company: CompanyMeta

        public var countryOfOrigin: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case stage

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"

            case modifiedBy = "modified_by"

            case manufacturer

            case uid

            case isActive = "is_active"

            case returnConfig = "return_config"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case quantities

            case size

            case expirationDate = "expiration_date"

            case brand

            case weight

            case addedOnStore = "added_on_store"

            case dimension

            case store

            case meta

            case createdBy = "created_by"

            case identifier

            case set

            case price

            case trackInventory = "track_inventory"

            case trader

            case isSet = "is_set"

            case totalQuantity = "total_quantity"

            case tags

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"

            case fragile

            case company

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.uid = uid

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.size = size

            self.expirationDate = expirationDate

            self.brand = brand

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.store = store

            self.meta = meta

            self.createdBy = createdBy

            self.identifier = identifier

            self.set = set

            self.price = price

            self.trackInventory = trackInventory

            self.trader = trader

            self.isSet = isSet

            self.totalQuantity = totalQuantity

            self.tags = tags

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.company = company

            self.countryOfOrigin = countryOfOrigin

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

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
