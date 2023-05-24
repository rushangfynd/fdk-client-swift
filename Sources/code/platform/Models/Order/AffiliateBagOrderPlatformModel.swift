

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var id: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var priceMarked: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceEffective: Double

        public var sku: String

        public var companyId: Int

        public var storeId: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var itemSize: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case id = "_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case discount

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case sku

            case companyId = "company_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.id = id

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.sku = sku

            self.companyId = companyId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var id: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var priceMarked: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceEffective: Double

        public var sku: String

        public var companyId: Int

        public var storeId: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var itemSize: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case id = "_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case discount

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case sku

            case companyId = "company_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.id = id

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.sku = sku

            self.companyId = companyId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
