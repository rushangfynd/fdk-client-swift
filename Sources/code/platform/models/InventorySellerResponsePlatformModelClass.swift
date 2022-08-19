

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var set: InventorySet?

        public var customJson: [String: Any]?

        public var itemId: Int

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var quantities: Quantities?

        public var isActive: Bool?

        public var dimension: DimensionResponse

        public var uid: String

        public var totalQuantity: Int

        public var fyndItemCode: String

        public var store: StoreMeta

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var size: String

        public var fragile: Bool

        public var trader: [Trader1]?

        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var stage: String?

        public var brand: BrandMeta

        public var weight: WeightResponse

        public var identifier: [String: Any]

        public var rawMeta: [String: Any]?

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var meta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var taxIdentifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case manufacturer

            case expirationDate = "expiration_date"

            case set

            case customJson = "_custom_json"

            case itemId = "item_id"

            case price

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case quantities

            case isActive = "is_active"

            case dimension

            case uid

            case totalQuantity = "total_quantity"

            case fyndItemCode = "fynd_item_code"

            case store

            case company

            case sellerIdentifier = "seller_identifier"

            case size

            case fragile

            case trader

            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case stage

            case brand

            case weight

            case identifier

            case rawMeta = "raw_meta"

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case meta

            case returnConfig = "return_config"

            case taxIdentifier = "tax_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.set = set

            self.customJson = customJson

            self.itemId = itemId

            self.price = price

            self.fyndMeta = fyndMeta

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.quantities = quantities

            self.isActive = isActive

            self.dimension = dimension

            self.uid = uid

            self.totalQuantity = totalQuantity

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.fragile = fragile

            self.trader = trader

            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.brand = brand

            self.weight = weight

            self.identifier = identifier

            self.rawMeta = rawMeta

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.returnConfig = returnConfig

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            uid = try container.decode(String.self, forKey: .uid)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            size = try container.decode(String.self, forKey: .size)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
