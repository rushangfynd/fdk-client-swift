

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var fyndStoreId: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var itemSize: String

        public var id: String

        public var quantity: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var priceEffective: Double

        public var discount: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var itemId: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case id = "_id"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case identifier

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.id = id

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
