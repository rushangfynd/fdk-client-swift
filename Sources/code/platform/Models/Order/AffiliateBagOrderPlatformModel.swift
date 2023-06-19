

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var amountPaid: Double

        public var sku: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var itemSize: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var quantity: Int

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case sku

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case identifier

            case unitPrice = "unit_price"

            case quantity

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.sku = sku

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var amountPaid: Double

        public var sku: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var itemSize: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var quantity: Int

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case sku

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case identifier

            case unitPrice = "unit_price"

            case quantity

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.sku = sku

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
