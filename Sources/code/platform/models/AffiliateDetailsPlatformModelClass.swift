

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Orders
     */

    class AffiliateDetails: Codable {
        public var companyAffiliateTag: String?

        public var affiliateId: String?

        public var affiliateMeta: AffiliateMeta

        public var pdfLinks: PDFLinks?

        public var affiliateBagId: String

        public var adId: String?

        public var shipmentMeta: ShipmentMeta

        public var affiliateShipmentId: String

        public var affiliateOrderId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateId = "affiliate_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case affiliateBagId = "affiliate_bag_id"

            case adId = "ad_id"

            case shipmentMeta = "shipment_meta"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateId = affiliateId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.affiliateBagId = affiliateBagId

            self.adId = adId

            self.shipmentMeta = shipmentMeta

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateOrderId = affiliateOrderId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
