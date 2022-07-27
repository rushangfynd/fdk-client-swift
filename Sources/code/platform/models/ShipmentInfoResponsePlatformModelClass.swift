

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var lockStatus: String

        public var billingDetails: UserDetailsData?

        public var enableDpTracking: String

        public var company: [String: Any]

        public var enableTracking: Bool?

        public var securedDeliveryFlag: String?

        public var payments: ShipmentPayments?

        public var journeyType: String

        public var orderType: String

        public var goGreen: Bool?

        public var pickedDate: String

        public var shipmentId: String

        public var status: ShipmentStatusData?

        public var isInvoiced: Bool

        public var isNotFyndSource: Bool

        public var deliveryDetails: UserDetailsData?

        public var bagStatusHistory: [BagStatusHistory]?

        public var beneficiaryDetails: Bool?

        public var platformLogo: Bool

        public var isFyndCoupon: Bool

        public var canReturn: Bool?

        public var refundText: String?

        public var vertical: String?

        public var dueDate: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var paymentMode: String

        public var dpDetails: DPDetails?

        public var replacementDetails: String?

        public var prices: Prices?

        public var currentShipmentStatus: [String: Any]

        public var creditNoteId: String

        public var fulfillingStore: FulfillingStore?

        public var userAgent: String

        public var totalItems: Int?

        public var childNodes: [String]?

        public var userId: String

        public var trackingUrl: String

        public var isFyndStore: String?

        public var deliverySlot: [String: Any]

        public var canCancel: Bool?

        public var isPackagingOrder: Bool

        public var bags: OrderBags?

        public var emailId: String

        public var trackingList: [TrackingList]?

        public var order: OrderDetailsData?

        public var gstDetails: GST?

        public var orderStatus: [String: Any]

        public var payButton: String?

        public var canBreak: String

        public var packagingType: String

        public var forwardShipmentStatus: [[String: Any]]?

        public var escalation: [String: Any]?

        public var fyndstoreEmp: [String: Any]

        public var refundDetails: [String: Any]?

        public var deliveryStatus: [[String: Any]]

        public var items: [[String: Any]]

        public var invoice: [String: Any]

        public var mid: String?

        public var userInfo: [String: Any]?

        public var forwardTrackingList: [[String: Any]]?

        public var priorityText: String?

        public var isPdsr: String?

        public var orderCreatedTime: String?

        public var coupon: [String: Any]?

        public var orderingStore: [String: Any]

        public var affiliateShipmentId: String

        public var kiranaStoreId: String?

        public var bankData: [String: Any]?

        public var shipmentQuantity: Int

        public var statusProgress: Int

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case billingDetails = "billing_details"

            case enableDpTracking = "enable_dp_tracking"

            case company

            case enableTracking = "enable_tracking"

            case securedDeliveryFlag = "secured_delivery_flag"

            case payments

            case journeyType = "journey_type"

            case orderType = "order_type"

            case goGreen = "go_green"

            case pickedDate = "picked_date"

            case shipmentId = "shipment_id"

            case status

            case isInvoiced = "is_invoiced"

            case isNotFyndSource = "is_not_fynd_source"

            case deliveryDetails = "delivery_details"

            case bagStatusHistory = "bag_status_history"

            case beneficiaryDetails = "beneficiary_details"

            case platformLogo = "platform_logo"

            case isFyndCoupon = "is_fynd_coupon"

            case canReturn = "can_return"

            case refundText = "refund_text"

            case vertical

            case dueDate = "due_date"

            case forwardOrderStatus = "forward_order_status"

            case paymentMode = "payment_mode"

            case dpDetails = "dp_details"

            case replacementDetails = "replacement_details"

            case prices

            case currentShipmentStatus = "current_shipment_status"

            case creditNoteId = "credit_note_id"

            case fulfillingStore = "fulfilling_store"

            case userAgent = "user_agent"

            case totalItems = "total_items"

            case childNodes = "child_nodes"

            case userId = "user_id"

            case trackingUrl = "tracking_url"

            case isFyndStore = "is_fynd_store"

            case deliverySlot = "delivery_slot"

            case canCancel = "can_cancel"

            case isPackagingOrder = "is_packaging_order"

            case bags

            case emailId = "email_id"

            case trackingList = "tracking_list"

            case order

            case gstDetails = "gst_details"

            case orderStatus = "order_status"

            case payButton = "pay_button"

            case canBreak = "can_break"

            case packagingType = "packaging_type"

            case forwardShipmentStatus = "forward_shipment_status"

            case escalation

            case fyndstoreEmp = "fyndstore_emp"

            case refundDetails = "refund_details"

            case deliveryStatus = "delivery_status"

            case items

            case invoice

            case mid

            case userInfo = "user_info"

            case forwardTrackingList = "forward_tracking_list"

            case priorityText = "priority_text"

            case isPdsr = "is_pdsr"

            case orderCreatedTime = "order_created_time"

            case coupon

            case orderingStore = "ordering_store"

            case affiliateShipmentId = "affiliate_shipment_id"

            case kiranaStoreId = "kirana_store_id"

            case bankData = "bank_data"

            case shipmentQuantity = "shipment_quantity"

            case statusProgress = "status_progress"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.lockStatus = lockStatus

            self.billingDetails = billingDetails

            self.enableDpTracking = enableDpTracking

            self.company = company

            self.enableTracking = enableTracking

            self.securedDeliveryFlag = securedDeliveryFlag

            self.payments = payments

            self.journeyType = journeyType

            self.orderType = orderType

            self.goGreen = goGreen

            self.pickedDate = pickedDate

            self.shipmentId = shipmentId

            self.status = status

            self.isInvoiced = isInvoiced

            self.isNotFyndSource = isNotFyndSource

            self.deliveryDetails = deliveryDetails

            self.bagStatusHistory = bagStatusHistory

            self.beneficiaryDetails = beneficiaryDetails

            self.platformLogo = platformLogo

            self.isFyndCoupon = isFyndCoupon

            self.canReturn = canReturn

            self.refundText = refundText

            self.vertical = vertical

            self.dueDate = dueDate

            self.forwardOrderStatus = forwardOrderStatus

            self.paymentMode = paymentMode

            self.dpDetails = dpDetails

            self.replacementDetails = replacementDetails

            self.prices = prices

            self.currentShipmentStatus = currentShipmentStatus

            self.creditNoteId = creditNoteId

            self.fulfillingStore = fulfillingStore

            self.userAgent = userAgent

            self.totalItems = totalItems

            self.childNodes = childNodes

            self.userId = userId

            self.trackingUrl = trackingUrl

            self.isFyndStore = isFyndStore

            self.deliverySlot = deliverySlot

            self.canCancel = canCancel

            self.isPackagingOrder = isPackagingOrder

            self.bags = bags

            self.emailId = emailId

            self.trackingList = trackingList

            self.order = order

            self.gstDetails = gstDetails

            self.orderStatus = orderStatus

            self.payButton = payButton

            self.canBreak = canBreak

            self.packagingType = packagingType

            self.forwardShipmentStatus = forwardShipmentStatus

            self.escalation = escalation

            self.fyndstoreEmp = fyndstoreEmp

            self.refundDetails = refundDetails

            self.deliveryStatus = deliveryStatus

            self.items = items

            self.invoice = invoice

            self.mid = mid

            self.userInfo = userInfo

            self.forwardTrackingList = forwardTrackingList

            self.priorityText = priorityText

            self.isPdsr = isPdsr

            self.orderCreatedTime = orderCreatedTime

            self.coupon = coupon

            self.orderingStore = orderingStore

            self.affiliateShipmentId = affiliateShipmentId

            self.kiranaStoreId = kiranaStoreId

            self.bankData = bankData

            self.shipmentQuantity = shipmentQuantity

            self.statusProgress = statusProgress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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

            userId = try container.decode(String.self, forKey: .userId)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            items = try container.decode([[String: Any]].self, forKey: .items)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

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
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)
        }
    }
}
