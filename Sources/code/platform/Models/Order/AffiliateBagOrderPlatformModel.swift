

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var itemSize: String

        public var priceMarked: Double

        public var avlQty: Int

        public var storeId: Int

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var quantity: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var id: String

        public var hsnCodeId: String

        public var unitPrice: Double

        public var sku: String

        public var companyId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case quantity

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case sku

            case companyId = "company_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.sku = sku

            self.companyId = companyId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var itemSize: String

        public var priceMarked: Double

        public var avlQty: Int

        public var storeId: Int

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var quantity: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var id: String

        public var hsnCodeId: String

        public var unitPrice: Double

        public var sku: String

        public var companyId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case quantity

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case sku

            case companyId = "company_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.sku = sku

            self.companyId = companyId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
