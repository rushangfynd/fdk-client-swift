

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var size: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var fragile: Bool

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var price: PriceMeta

        public var dimension: DimensionResponse

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var manufacturer: ManufacturerResponse

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var rawMeta: [String: Any]?

        public var stage: String?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var store: StoreMeta

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var modifiedBy: UserSerializer?

        public var fyndItemCode: String

        public var itemId: Int

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var weight: WeightResponse

        public var fyndMeta: [String: Any]?

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var totalQuantity: Int

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case isSet = "is_set"

            case customJson = "_custom_json"

            case fragile

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case price

            case dimension

            case returnConfig = "return_config"

            case uid

            case taxIdentifier = "tax_identifier"

            case meta

            case quantities

            case manufacturer

            case sellerIdentifier = "seller_identifier"

            case set

            case rawMeta = "raw_meta"

            case stage

            case createdBy = "created_by"

            case identifier

            case store

            case brand

            case trader

            case modifiedBy = "modified_by"

            case fyndItemCode = "fynd_item_code"

            case itemId = "item_id"

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case weight

            case fyndMeta = "fynd_meta"

            case company

            case addedOnStore = "added_on_store"

            case totalQuantity = "total_quantity"

            case expirationDate = "expiration_date"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.size = size

            self.isSet = isSet

            self.customJson = customJson

            self.fragile = fragile

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.price = price

            self.dimension = dimension

            self.returnConfig = returnConfig

            self.uid = uid

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.quantities = quantities

            self.manufacturer = manufacturer

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.rawMeta = rawMeta

            self.stage = stage

            self.createdBy = createdBy

            self.identifier = identifier

            self.store = store

            self.brand = brand

            self.trader = trader

            self.modifiedBy = modifiedBy

            self.fyndItemCode = fyndItemCode

            self.itemId = itemId

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.weight = weight

            self.fyndMeta = fyndMeta

            self.company = company

            self.addedOnStore = addedOnStore

            self.totalQuantity = totalQuantity

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            price = try container.decode(PriceMeta.self, forKey: .price)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
