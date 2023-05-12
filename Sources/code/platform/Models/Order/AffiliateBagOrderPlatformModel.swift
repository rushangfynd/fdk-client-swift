

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var unitPrice: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var id: String

        public var amountPaid: Double

        public var avlQty: Int

        public var itemSize: String

        public var modifiedOn: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var itemId: Int

        public var discount: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case sku

            case itemId = "item_id"

            case discount

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.id = id

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.itemId = itemId

            self.discount = discount

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var unitPrice: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var id: String

        public var amountPaid: Double

        public var avlQty: Int

        public var itemSize: String

        public var modifiedOn: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var itemId: Int

        public var discount: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case id = "_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case sku

            case itemId = "item_id"

            case discount

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.id = id

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.itemId = itemId

            self.discount = discount

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
