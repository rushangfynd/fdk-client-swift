

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var modeOfPayment: String

        public var anonymousCod: Bool?

        public var enabled: Bool

        public var source: String

        public var codAmountLimit: Int?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var codCharges: Int?

        public var callbackUrl: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modeOfPayment = "mode_of_payment"

            case anonymousCod = "anonymous_cod"

            case enabled

            case source

            case codAmountLimit = "cod_amount_limit"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case codCharges = "cod_charges"

            case callbackUrl = "callback_url"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.modeOfPayment = modeOfPayment

            self.anonymousCod = anonymousCod

            self.enabled = enabled

            self.source = source

            self.codAmountLimit = codAmountLimit

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.codCharges = codCharges

            self.callbackUrl = callbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            source = try container.decode(String.self, forKey: .source)

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var modeOfPayment: String

        public var anonymousCod: Bool?

        public var enabled: Bool

        public var source: String

        public var codAmountLimit: Int?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var codCharges: Int?

        public var callbackUrl: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modeOfPayment = "mode_of_payment"

            case anonymousCod = "anonymous_cod"

            case enabled

            case source

            case codAmountLimit = "cod_amount_limit"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case codCharges = "cod_charges"

            case callbackUrl = "callback_url"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.modeOfPayment = modeOfPayment

            self.anonymousCod = anonymousCod

            self.enabled = enabled

            self.source = source

            self.codAmountLimit = codAmountLimit

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.codCharges = codCharges

            self.callbackUrl = callbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            source = try container.decode(String.self, forKey: .source)

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        }
    }
}