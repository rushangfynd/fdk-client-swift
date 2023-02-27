

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var brandCalculatedAmount: Double

        public var isDefaultHsnCode: Bool?

        public var gstFee: Double

        public var cgstTaxPercentage: Double

        public var cgstGstFee: String

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var igstGstFee: String

        public var igstTaxPercentage: Double

        public var sgstGstFee: String

        public var hsnCode: String

        public var gstTag: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstFee = "gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstFee = gstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
