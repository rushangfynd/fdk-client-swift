

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var sku: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var companyId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var discount: Double

        public var itemId: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var modifiedOn: String

        public var id: String

        public var itemSize: String

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case discount

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case id = "_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.discount = discount

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.id = id

            self.itemSize = itemSize

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var sku: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var companyId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var discount: Double

        public var itemId: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var modifiedOn: String

        public var id: String

        public var itemSize: String

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case discount

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case id = "_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.discount = discount

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.id = id

            self.itemSize = itemSize

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
