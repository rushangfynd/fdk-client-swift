

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var storeId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var avlQty: Int

        public var sku: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case quantity

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case sku

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.avlQty = avlQty

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var storeId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var avlQty: Int

        public var sku: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case quantity

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case sku

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.avlQty = avlQty

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
