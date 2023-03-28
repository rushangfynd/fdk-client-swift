

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var sku: String

        public var discount: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var id: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case identifier

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case sku

            case discount

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.identifier = identifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.sku = sku

            self.discount = discount

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var sku: String

        public var discount: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var id: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var itemId: Int

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case identifier

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case sku

            case discount

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.identifier = identifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.sku = sku

            self.discount = discount

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
