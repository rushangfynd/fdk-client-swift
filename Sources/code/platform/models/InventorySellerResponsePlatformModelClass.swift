

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var identifier: [String: Any]

        public var weight: WeightResponse

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var fyndArticleCode: String

        public var sizeQuantity: Double?

        public var meta: [String: Any]?

        public var itemId: Int

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta

        public var addedOnStore: String?

        public var isSet: Bool?

        public var fyndItemCode: String

        public var returnConfig: ReturnConfig1?

        public var size: String

        public var set: InventorySet?

        public var customJson: [String: Any]?

        public var expirationDate: String?

        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var sizeUnit: String?

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var price: PriceMeta

        public var uid: String

        public var manufacturer: ManufacturerResponse

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var taxIdentifier: [String: Any]?

        public var company: CompanyMeta

        public var fragile: Bool

        public var quantities: Quantities?

        public var sellerIdentifier: String

        public var countryOfOrigin: String

        public enum CodingKeys: String, CodingKey {
            case stage

            case identifier

            case weight

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case fyndArticleCode = "fynd_article_code"

            case sizeQuantity = "size_quantity"

            case meta

            case itemId = "item_id"

            case dimension

            case modifiedBy = "modified_by"

            case brand

            case addedOnStore = "added_on_store"

            case isSet = "is_set"

            case fyndItemCode = "fynd_item_code"

            case returnConfig = "return_config"

            case size

            case set

            case customJson = "_custom_json"

            case expirationDate = "expiration_date"

            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case sizeUnit = "size_unit"

            case fyndMeta = "fynd_meta"

            case store

            case price

            case uid

            case manufacturer

            case isActive = "is_active"

            case trader

            case taxIdentifier = "tax_identifier"

            case company

            case fragile

            case quantities

            case sellerIdentifier = "seller_identifier"

            case countryOfOrigin = "country_of_origin"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, sizeQuantity: Double? = nil, sizeUnit: String? = nil, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.identifier = identifier

            self.weight = weight

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.fyndArticleCode = fyndArticleCode

            self.sizeQuantity = sizeQuantity

            self.meta = meta

            self.itemId = itemId

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.brand = brand

            self.addedOnStore = addedOnStore

            self.isSet = isSet

            self.fyndItemCode = fyndItemCode

            self.returnConfig = returnConfig

            self.size = size

            self.set = set

            self.customJson = customJson

            self.expirationDate = expirationDate

            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.sizeUnit = sizeUnit

            self.fyndMeta = fyndMeta

            self.store = store

            self.price = price

            self.uid = uid

            self.manufacturer = manufacturer

            self.isActive = isActive

            self.trader = trader

            self.taxIdentifier = taxIdentifier

            self.company = company

            self.fragile = fragile

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                sizeQuantity = try container.decode(Double.self, forKey: .sizeQuantity)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                sizeUnit = try container.decode(String.self, forKey: .sizeUnit)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            price = try container.decode(PriceMeta.self, forKey: .price)

            uid = try container.decode(String.self, forKey: .uid)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(sizeQuantity, forKey: .sizeQuantity)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sizeUnit, forKey: .sizeUnit)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
