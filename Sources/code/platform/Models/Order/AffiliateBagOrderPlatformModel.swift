

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var modifiedOn: String

        public var itemId: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var itemSize: String

        public var id: String

        public var affiliateStoreId: String

        public var sku: String

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var priceEffective: Double

        public var avlQty: Int

        public var amountPaid: Double

        public var storeId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var quantity: Int

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case discount

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case itemSize = "item_size"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case quantity

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.itemSize = itemSize

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var modifiedOn: String

        public var itemId: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var itemSize: String

        public var id: String

        public var affiliateStoreId: String

        public var sku: String

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var priceEffective: Double

        public var avlQty: Int

        public var amountPaid: Double

        public var storeId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var quantity: Int

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case discount

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case itemSize = "item_size"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case quantity

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.itemSize = itemSize

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}