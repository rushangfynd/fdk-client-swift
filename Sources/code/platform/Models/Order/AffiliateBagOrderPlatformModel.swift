

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var quantity: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var itemSize: String

        public var avlQty: Int

        public var sku: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var id: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var companyId: Int

        public var storeId: Int

        public var itemId: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case quantity

            case discount

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case sku

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case id = "_id"

            case priceMarked = "price_marked"

            case identifier

            case companyId = "company_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.quantity = quantity

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.id = id

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.companyId = companyId

            self.storeId = storeId

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
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

        public var quantity: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var itemSize: String

        public var avlQty: Int

        public var sku: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var id: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var companyId: Int

        public var storeId: Int

        public var itemId: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case quantity

            case discount

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case sku

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case id = "_id"

            case priceMarked = "price_marked"

            case identifier

            case companyId = "company_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.quantity = quantity

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.id = id

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.companyId = companyId

            self.storeId = storeId

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
