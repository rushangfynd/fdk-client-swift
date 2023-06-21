

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var itemSize: String

        public var modifiedOn: String

        public var quantity: Int

        public var id: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var unitPrice: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case quantity

            case id = "_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case discount

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case identifier

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.id = id

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
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

        public var storeId: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var itemSize: String

        public var modifiedOn: String

        public var quantity: Int

        public var id: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var unitPrice: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case quantity

            case id = "_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case discount

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case identifier

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.id = id

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
