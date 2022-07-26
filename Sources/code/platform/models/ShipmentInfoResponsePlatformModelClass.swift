

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var canBreak: String

        public var canReturn: Bool?

        public var isPackagingOrder: Bool

        public var escalation: [String: Any]?

        public var totalItems: Int?

        public var bags: OrderBags?

        public var deliveryDetails: UserDetailsData?

        public var refundText: String?

        public var userId: String

        public var trackingUrl: String

        public var canCancel: Bool?

        public var forwardTrackingList: [[String: Any]]?

        public var payments: ShipmentPayments?

        public var paymentMode: String

        public var shipmentQuantity: Int

        public var userAgent: String

        public var isNotFyndSource: Bool

        public var isInvoiced: Bool

        public var enableTracking: Bool?

        public var trackingList: [TrackingList]?

        public var vertical: String?

        public var orderCreatedTime: String?

        public var orderingStore: [String: Any]

        public var bagStatusHistory: [BagStatusHistory]?

        public var deliverySlot: [String: Any]

        public var coupon: [String: Any]?

        public var emailId: String

        public var replacementDetails: String?

        public var securedDeliveryFlag: String?

        public var bankData: [String: Any]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var refundDetails: [String: Any]?

        public var dpDetails: DPDetails?

        public var prices: Prices?

        public var order: OrderDetailsData?

        public var childNodes: [String]?

        public var billingDetails: UserDetailsData?

        public var fulfillingStore: FulfillingStore?

        public var isFyndCoupon: Bool

        public var beneficiaryDetails: Bool?

        public var gstDetails: GST?

        public var affiliateShipmentId: String

        public var packagingType: String

        public var items: [[String: Any]]

        public var journeyType: String

        public var dueDate: String?

        public var fyndstoreEmp: [String: Any]

        public var invoice: [String: Any]

        public var creditNoteId: String

        public var forwardOrderStatus: [[String: Any]]?

        public var isFyndStore: String?

        public var status: ShipmentStatusData?

        public var priorityText: String?

        public var kiranaStoreId: String?

        public var userInfo: [String: Any]?

        public var shipmentId: String

        public var goGreen: Bool?

        public var pickedDate: String

        public var statusProgress: Int

        public var orderStatus: [String: Any]

        public var company: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var payButton: String?

        public var mid: String?

        public var enableDpTracking: String

        public var currentShipmentStatus: [String: Any]

        public var platformLogo: Bool

        public var isPdsr: String?

        public var orderType: String

        public var lockStatus: String

        public enum CodingKeys: String, CodingKey {
            case canBreak = "can_break"

            case canReturn = "can_return"

            case isPackagingOrder = "is_packaging_order"

            case escalation

            case totalItems = "total_items"

            case bags

            case deliveryDetails = "delivery_details"

            case refundText = "refund_text"

            case userId = "user_id"

            case trackingUrl = "tracking_url"

            case canCancel = "can_cancel"

            case forwardTrackingList = "forward_tracking_list"

            case payments

            case paymentMode = "payment_mode"

            case shipmentQuantity = "shipment_quantity"

            case userAgent = "user_agent"

            case isNotFyndSource = "is_not_fynd_source"

            case isInvoiced = "is_invoiced"

            case enableTracking = "enable_tracking"

            case trackingList = "tracking_list"

            case vertical

            case orderCreatedTime = "order_created_time"

            case orderingStore = "ordering_store"

            case bagStatusHistory = "bag_status_history"

            case deliverySlot = "delivery_slot"

            case coupon

            case emailId = "email_id"

            case replacementDetails = "replacement_details"

            case securedDeliveryFlag = "secured_delivery_flag"

            case bankData = "bank_data"

            case forwardShipmentStatus = "forward_shipment_status"

            case refundDetails = "refund_details"

            case dpDetails = "dp_details"

            case prices

            case order

            case childNodes = "child_nodes"

            case billingDetails = "billing_details"

            case fulfillingStore = "fulfilling_store"

            case isFyndCoupon = "is_fynd_coupon"

            case beneficiaryDetails = "beneficiary_details"

            case gstDetails = "gst_details"

            case affiliateShipmentId = "affiliate_shipment_id"

            case packagingType = "packaging_type"

            case items

            case journeyType = "journey_type"

            case dueDate = "due_date"

            case fyndstoreEmp = "fyndstore_emp"

            case invoice

            case creditNoteId = "credit_note_id"

            case forwardOrderStatus = "forward_order_status"

            case isFyndStore = "is_fynd_store"

            case status

            case priorityText = "priority_text"

            case kiranaStoreId = "kirana_store_id"

            case userInfo = "user_info"

            case shipmentId = "shipment_id"

            case goGreen = "go_green"

            case pickedDate = "picked_date"

            case statusProgress = "status_progress"

            case orderStatus = "order_status"

            case company

            case deliveryStatus = "delivery_status"

            case payButton = "pay_button"

            case mid

            case enableDpTracking = "enable_dp_tracking"

            case currentShipmentStatus = "current_shipment_status"

            case platformLogo = "platform_logo"

            case isPdsr = "is_pdsr"

            case orderType = "order_type"

            case lockStatus = "lock_status"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.canBreak = canBreak

            self.canReturn = canReturn

            self.isPackagingOrder = isPackagingOrder

            self.escalation = escalation

            self.totalItems = totalItems

            self.bags = bags

            self.deliveryDetails = deliveryDetails

            self.refundText = refundText

            self.userId = userId

            self.trackingUrl = trackingUrl

            self.canCancel = canCancel

            self.forwardTrackingList = forwardTrackingList

            self.payments = payments

            self.paymentMode = paymentMode

            self.shipmentQuantity = shipmentQuantity

            self.userAgent = userAgent

            self.isNotFyndSource = isNotFyndSource

            self.isInvoiced = isInvoiced

            self.enableTracking = enableTracking

            self.trackingList = trackingList

            self.vertical = vertical

            self.orderCreatedTime = orderCreatedTime

            self.orderingStore = orderingStore

            self.bagStatusHistory = bagStatusHistory

            self.deliverySlot = deliverySlot

            self.coupon = coupon

            self.emailId = emailId

            self.replacementDetails = replacementDetails

            self.securedDeliveryFlag = securedDeliveryFlag

            self.bankData = bankData

            self.forwardShipmentStatus = forwardShipmentStatus

            self.refundDetails = refundDetails

            self.dpDetails = dpDetails

            self.prices = prices

            self.order = order

            self.childNodes = childNodes

            self.billingDetails = billingDetails

            self.fulfillingStore = fulfillingStore

            self.isFyndCoupon = isFyndCoupon

            self.beneficiaryDetails = beneficiaryDetails

            self.gstDetails = gstDetails

            self.affiliateShipmentId = affiliateShipmentId

            self.packagingType = packagingType

            self.items = items

            self.journeyType = journeyType

            self.dueDate = dueDate

            self.fyndstoreEmp = fyndstoreEmp

            self.invoice = invoice

            self.creditNoteId = creditNoteId

            self.forwardOrderStatus = forwardOrderStatus

            self.isFyndStore = isFyndStore

            self.status = status

            self.priorityText = priorityText

            self.kiranaStoreId = kiranaStoreId

            self.userInfo = userInfo

            self.shipmentId = shipmentId

            self.goGreen = goGreen

            self.pickedDate = pickedDate

            self.statusProgress = statusProgress

            self.orderStatus = orderStatus

            self.company = company

            self.deliveryStatus = deliveryStatus

            self.payButton = payButton

            self.mid = mid

            self.enableDpTracking = enableDpTracking

            self.currentShipmentStatus = currentShipmentStatus

            self.platformLogo = platformLogo

            self.isPdsr = isPdsr

            self.orderType = orderType

            self.lockStatus = lockStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            items = try container.decode([[String: Any]].self, forKey: .items)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            company = try container.decode([String: Any].self, forKey: .company)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
        }
    }
}
