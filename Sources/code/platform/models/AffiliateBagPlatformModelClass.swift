

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var id: String

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var sku: String

        public var priceMarked: Double

        public var avlQty: Int

        public var itemId: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var discount: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case identifier

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case quantity

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case sku

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.sku = sku

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
