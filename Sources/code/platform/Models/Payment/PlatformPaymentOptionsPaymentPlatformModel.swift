

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var enabled: Bool

        public var modeOfPayment: String

        public var methods: [String: Any]

        public var anonymousCod: Bool?

        public var codCharges: Int?

        public var source: String

        public var paymentSelectionLock: [String: Any]?

        public var callbackUrl: [String: Any]?

        public var codAmountLimit: Int?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case modeOfPayment = "mode_of_payment"

            case methods

            case anonymousCod = "anonymous_cod"

            case codCharges = "cod_charges"

            case source

            case paymentSelectionLock = "payment_selection_lock"

            case callbackUrl = "callback_url"

            case codAmountLimit = "cod_amount_limit"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.enabled = enabled

            self.modeOfPayment = modeOfPayment

            self.methods = methods

            self.anonymousCod = anonymousCod

            self.codCharges = codCharges

            self.source = source

            self.paymentSelectionLock = paymentSelectionLock

            self.callbackUrl = callbackUrl

            self.codAmountLimit = codAmountLimit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            methods = try container.decode([String: Any].self, forKey: .methods)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

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

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var enabled: Bool

        public var modeOfPayment: String

        public var methods: [String: Any]

        public var anonymousCod: Bool?

        public var codCharges: Int?

        public var source: String

        public var paymentSelectionLock: [String: Any]?

        public var callbackUrl: [String: Any]?

        public var codAmountLimit: Int?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case modeOfPayment = "mode_of_payment"

            case methods

            case anonymousCod = "anonymous_cod"

            case codCharges = "cod_charges"

            case source

            case paymentSelectionLock = "payment_selection_lock"

            case callbackUrl = "callback_url"

            case codAmountLimit = "cod_amount_limit"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.enabled = enabled

            self.modeOfPayment = modeOfPayment

            self.methods = methods

            self.anonymousCod = anonymousCod

            self.codCharges = codCharges

            self.source = source

            self.paymentSelectionLock = paymentSelectionLock

            self.callbackUrl = callbackUrl

            self.codAmountLimit = codAmountLimit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            methods = try container.decode([String: Any].self, forKey: .methods)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

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

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)
        }
    }
}
