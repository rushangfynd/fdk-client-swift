

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var sku: String

        public var discount: Double

        public var id: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var itemId: Int

        public var companyId: Int

        public var priceEffective: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case sku

            case discount

            case id = "_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case itemId = "item_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.sku = sku

            self.discount = discount

            self.id = id

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.itemId = itemId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var sku: String

        public var discount: Double

        public var id: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var itemId: Int

        public var companyId: Int

        public var priceEffective: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case sku

            case discount

            case id = "_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case itemId = "item_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.sku = sku

            self.discount = discount

            self.id = id

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.itemId = itemId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
