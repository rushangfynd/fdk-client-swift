

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GSTDetailsData
        Used By: Order
    */

    class GSTDetailsData: Codable {
        
        
        public var cgstTaxPercentage: Double?
        
        public var gstinCode: String?
        
        public var valueOfGood: Double
        
        public var gstFee: Double
        
        public var igstTaxPercentage: Double?
        
        public var gstTaxPercentage: Double?
        
        public var hsnCodeId: String?
        
        public var igstGstFee: Double?
        
        public var isDefaultHsnCode: Bool?
        
        public var sgstGstFee: Double?
        
        public var taxCollectedAtSource: Double
        
        public var brandCalculatedAmount: Double
        
        public var cgstGstFee: Double?
        
        public var gstTag: String?
        
        public var sgstTaxPercentage: Double?
        
        public var hsnCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cgstTaxPercentage = "cgst_tax_percentage"
            
            case gstinCode = "gstin_code"
            
            case valueOfGood = "value_of_good"
            
            case gstFee = "gst_fee"
            
            case igstTaxPercentage = "igst_tax_percentage"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case hsnCodeId = "hsn_code_id"
            
            case igstGstFee = "igst_gst_fee"
            
            case isDefaultHsnCode = "is_default_hsn_code"
            
            case sgstGstFee = "sgst_gst_fee"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case cgstGstFee = "cgst_gst_fee"
            
            case gstTag = "gst_tag"
            
            case sgstTaxPercentage = "sgst_tax_percentage"
            
            case hsnCode = "hsn_code"
            
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: Double? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String? = nil, gstFee: Double, gstTag: String? = nil, gstTaxPercentage: Double? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: Double? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: Double? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double, valueOfGood: Double) {
            
            self.cgstTaxPercentage = cgstTaxPercentage
            
            self.gstinCode = gstinCode
            
            self.valueOfGood = valueOfGood
            
            self.gstFee = gstFee
            
            self.igstTaxPercentage = igstTaxPercentage
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.hsnCodeId = hsnCodeId
            
            self.igstGstFee = igstGstFee
            
            self.isDefaultHsnCode = isDefaultHsnCode
            
            self.sgstGstFee = sgstGstFee
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.cgstGstFee = cgstGstFee
            
            self.gstTag = gstTag
            
            self.sgstTaxPercentage = sgstTaxPercentage
            
            self.hsnCode = hsnCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstinCode = try container.decode(String.self, forKey: .gstinCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
            
            
            
                gstFee = try container.decode(Double.self, forKey: .gstFee)
                
            
            
            
                do {
                    igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    igstGstFee = try container.decode(Double.self, forKey: .igstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgstGstFee = try container.decode(Double.self, forKey: .sgstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
            
            
            
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
            
            
            
                do {
                    cgstGstFee = try container.decode(Double.self, forKey: .cgstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cgstTaxPercentage, forKey: .cgstTaxPercentage)
            
            
            
            
            try? container.encode(gstinCode, forKey: .gstinCode)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encode(igstTaxPercentage, forKey: .igstTaxPercentage)
            
            
            
            
            try? container.encode(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encode(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encode(igstGstFee, forKey: .igstGstFee)
            
            
            
            
            try? container.encode(isDefaultHsnCode, forKey: .isDefaultHsnCode)
            
            
            
            
            try? container.encode(sgstGstFee, forKey: .sgstGstFee)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(cgstGstFee, forKey: .cgstGstFee)
            
            
            
            
            try? container.encode(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encode(sgstTaxPercentage, forKey: .sgstTaxPercentage)
            
            
            
            
            try? container.encode(hsnCode, forKey: .hsnCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GSTDetailsData
        Used By: Order
    */

    class GSTDetailsData: Codable {
        
        
        public var cgstTaxPercentage: Double?
        
        public var gstinCode: String?
        
        public var valueOfGood: Double
        
        public var gstFee: Double
        
        public var igstTaxPercentage: Double?
        
        public var gstTaxPercentage: Double?
        
        public var hsnCodeId: String?
        
        public var igstGstFee: Double?
        
        public var isDefaultHsnCode: Bool?
        
        public var sgstGstFee: Double?
        
        public var taxCollectedAtSource: Double
        
        public var brandCalculatedAmount: Double
        
        public var cgstGstFee: Double?
        
        public var gstTag: String?
        
        public var sgstTaxPercentage: Double?
        
        public var hsnCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cgstTaxPercentage = "cgst_tax_percentage"
            
            case gstinCode = "gstin_code"
            
            case valueOfGood = "value_of_good"
            
            case gstFee = "gst_fee"
            
            case igstTaxPercentage = "igst_tax_percentage"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case hsnCodeId = "hsn_code_id"
            
            case igstGstFee = "igst_gst_fee"
            
            case isDefaultHsnCode = "is_default_hsn_code"
            
            case sgstGstFee = "sgst_gst_fee"
            
            case taxCollectedAtSource = "tax_collected_at_source"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case cgstGstFee = "cgst_gst_fee"
            
            case gstTag = "gst_tag"
            
            case sgstTaxPercentage = "sgst_tax_percentage"
            
            case hsnCode = "hsn_code"
            
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: Double? = nil, cgstTaxPercentage: Double? = nil, gstinCode: String? = nil, gstFee: Double, gstTag: String? = nil, gstTaxPercentage: Double? = nil, hsnCode: String? = nil, hsnCodeId: String? = nil, igstGstFee: Double? = nil, igstTaxPercentage: Double? = nil, isDefaultHsnCode: Bool? = nil, sgstGstFee: Double? = nil, sgstTaxPercentage: Double? = nil, taxCollectedAtSource: Double, valueOfGood: Double) {
            
            self.cgstTaxPercentage = cgstTaxPercentage
            
            self.gstinCode = gstinCode
            
            self.valueOfGood = valueOfGood
            
            self.gstFee = gstFee
            
            self.igstTaxPercentage = igstTaxPercentage
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.hsnCodeId = hsnCodeId
            
            self.igstGstFee = igstGstFee
            
            self.isDefaultHsnCode = isDefaultHsnCode
            
            self.sgstGstFee = sgstGstFee
            
            self.taxCollectedAtSource = taxCollectedAtSource
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.cgstGstFee = cgstGstFee
            
            self.gstTag = gstTag
            
            self.sgstTaxPercentage = sgstTaxPercentage
            
            self.hsnCode = hsnCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstinCode = try container.decode(String.self, forKey: .gstinCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
            
            
            
                gstFee = try container.decode(Double.self, forKey: .gstFee)
                
            
            
            
                do {
                    igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    igstGstFee = try container.decode(Double.self, forKey: .igstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgstGstFee = try container.decode(Double.self, forKey: .sgstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
                
            
            
            
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
            
            
            
                do {
                    cgstGstFee = try container.decode(Double.self, forKey: .cgstGstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cgstTaxPercentage, forKey: .cgstTaxPercentage)
            
            
            
            
            try? container.encode(gstinCode, forKey: .gstinCode)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encode(igstTaxPercentage, forKey: .igstTaxPercentage)
            
            
            
            
            try? container.encode(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encode(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encode(igstGstFee, forKey: .igstGstFee)
            
            
            
            
            try? container.encode(isDefaultHsnCode, forKey: .isDefaultHsnCode)
            
            
            
            
            try? container.encode(sgstGstFee, forKey: .sgstGstFee)
            
            
            
            
            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encode(cgstGstFee, forKey: .cgstGstFee)
            
            
            
            
            try? container.encode(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encode(sgstTaxPercentage, forKey: .sgstTaxPercentage)
            
            
            
            
            try? container.encode(hsnCode, forKey: .hsnCode)
            
            
        }
        
    }
}


