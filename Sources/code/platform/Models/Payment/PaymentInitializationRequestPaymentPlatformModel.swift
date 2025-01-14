

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentInitializationRequest
        Used By: Payment
    */

    class PaymentInitializationRequest: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var email: String
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var orderId: String
        
        public var currency: String
        
        public var amount: Int
        
        public var contact: String
        
        public var timeout: Int?
        
        public var merchantOrderId: String
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case timeout = "timeout"
            
            case merchantOrderId = "merchant_order_id"
            
            case method = "method"
            
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.timeout = timeout
            
            self.merchantOrderId = merchantOrderId
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                contact = try container.decode(String.self, forKey: .contact)
                
            
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encode(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentInitializationRequest
        Used By: Payment
    */

    class PaymentInitializationRequest: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var email: String
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var orderId: String
        
        public var currency: String
        
        public var amount: Int
        
        public var contact: String
        
        public var timeout: Int?
        
        public var merchantOrderId: String
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case timeout = "timeout"
            
            case merchantOrderId = "merchant_order_id"
            
            case method = "method"
            
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.timeout = timeout
            
            self.merchantOrderId = merchantOrderId
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                contact = try container.decode(String.self, forKey: .contact)
                
            
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encode(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}


