

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var itemId: Int

        public var discount: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var companyId: Int

        public var id: String

        public var fyndStoreId: String

        public var avlQty: Int

        public var sku: String

        public var quantity: Int

        public var itemSize: String

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case discount

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case companyId = "company_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case sku

            case quantity

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.discount = discount

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.companyId = companyId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.sku = sku

            self.quantity = quantity

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
