

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var nameOnCard: String?

        public var extendedCardType: String

        public var cardObject: String

        public var country: String

        public var cardExpYear: String?

        public var type: String

        public var cardExpMonth: String?

        public var bankCode: String

        public var cardBrand: String

        public var cardSubType: String

        public var user: String?

        public var id: String

        public var bank: String

        public var isDomesticCard: Bool

        public var status: Bool

        public var cardToken: String?

        public enum CodingKeys: String, CodingKey {
            case nameOnCard = "name_on_card"

            case extendedCardType = "extended_card_type"

            case cardObject = "card_object"

            case country

            case cardExpYear = "card_exp_year"

            case type

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"

            case cardBrand = "card_brand"

            case cardSubType = "card_sub_type"

            case user

            case id

            case bank

            case isDomesticCard = "is_domestic_card"

            case status

            case cardToken = "card_token"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.nameOnCard = nameOnCard

            self.extendedCardType = extendedCardType

            self.cardObject = cardObject

            self.country = country

            self.cardExpYear = cardExpYear

            self.type = type

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode

            self.cardBrand = cardBrand

            self.cardSubType = cardSubType

            self.user = user

            self.id = id

            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.status = status

            self.cardToken = cardToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            country = try container.decode(String.self, forKey: .country)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
        }
    }
}
