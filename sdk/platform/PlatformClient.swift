


public class PlatformClient {
    public let config: PlatformConfig

    public let lead: Lead

    public let theme: Theme

    public let payment: Payment

    public init(config: PlatformConfig) {
        self.config = config
        
        lead = Lead(config: config)
        
        theme = Theme(config: config)
        
        payment = Payment(config: config)
        
    }
    
    
    public class Lead {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Gets the list of company level tickets and/or ticket filters depending on query params
        * Description: Gets the list of company level tickets and/or ticket filters
        **/
        public func getTickets(
            items: Bool?,
            filters: Bool?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["items"] = items
            query["filters"] = filters
            query["page_no"] = pageNo
            query["page_size"] = pageSize
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketList.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Creates a company level ticket
        * Description: Creates a company level ticket
        **/
        public func createTicket(
            body: AddTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Retreives ticket details of a company level ticket with ticket ID
        * Description: Retreives ticket details of a company level ticket
        **/
        public func getTicket(
            ticketId: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Edits ticket details of a company level ticket
        * Description: Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
        **/
        public func editTicket(
            ticketId: String,
            body: EditTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create history for specific company level ticket
        * Description: Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func createHistory(
            ticketId: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketHistory.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Gets history list for specific company level ticket
        * Description: Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func getTicketHistory(
            ticketId: String,
            
            onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketHistoryList.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Theme {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Payment {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        /**
        *
        * Summary: Get All Payouts
        * Description: Get All Payouts
        **/
        public func getAllPayouts(
            uniqueExternalId: String?,
            
            onResponse: @escaping (_ response: PayoutsResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["unique_external_id"] = uniqueExternalId
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(PayoutsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Save Payout
        * Description: Save Payout
        **/
        public func savePayout(
            body: PayoutRequest,
            onResponse: @escaping (_ response: PayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(PayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Update Payout
        * Description: Update Payout
        **/
        public func updatePayout(
            uniqueTransferNo: String,
            body: PayoutRequest,
            onResponse: @escaping (_ response: UpdatePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdatePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Partial Update Payout
        * Description: Partial Update Payout
        **/
        public func activateAndDectivatePayout(
            uniqueTransferNo: String,
            body: UpdatePayoutRequest,
            onResponse: @escaping (_ response: UpdatePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "patch",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdatePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Delete Payout
        * Description: Delete Payout
        **/
        public func deletePayout(
            uniqueTransferNo: String,
            
            onResponse: @escaping (_ response: DeletePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(DeletePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: List Subscription Payment Method
        * Description: Get all  Subscription  Payment Method
        **/
        public func getSubscriptionPaymentMethod(
            
            onResponse: @escaping (_ response: SubscriptionPaymentMethodResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/methods",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SubscriptionPaymentMethodResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Delete Subscription Payment Method
        * Description: Uses this api to Delete Subscription Payment Method
        **/
        public func deleteSubscriptionPaymentMethod(
            uniqueExternalId: String,
            paymentMethodId: String,
            
            onResponse: @escaping (_ response: DeleteSubscriptionPaymentMethodResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["unique_external_id"] = uniqueExternalId
            query["payment_method_id"] = paymentMethodId
             
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/methods",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(DeleteSubscriptionPaymentMethodResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: List Subscription Config
        * Description: Get all  Subscription Config details
        **/
        public func getSubscriptionConfig(
            
            onResponse: @escaping (_ response: SubscriptionConfigResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/configs",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SubscriptionConfigResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Save Subscription Setup Intent
        * Description: Uses this api to Save Subscription Setup Intent
        **/
        public func saveSubscriptionSetupIntent(
            body: SaveSubscriptionSetupIntentRequest,
            onResponse: @escaping (_ response: SaveSubscriptionSetupIntentResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/setup/intent",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SaveSubscriptionSetupIntentResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
    }
    
    

    public func application(id: String) -> Application {
        return Application(applicationId: id, config: config)
    }

    public class Application {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        
        public let lead: Lead
        
        public let theme: Theme
        
        public let payment: Payment
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            theme = Theme(config: config, applicationId: applicationId)
            
            payment = Payment(config: config, applicationId: applicationId)
            
        }

        
            
        public class Lead {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            /**
            *
            * Summary: Gets the list of Application level Tickets and/or ticket filters depending on query params
            * Description: Gets the list of Application level Tickets and/or ticket filters
            **/
            public func getTickets(
                items: Bool?,
                filters: Bool?,
                
                onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["items"] = items
                query["filters"] = filters
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Retreives ticket details of a application level ticket
            * Description: Retreives ticket details of a application level ticket with ticket ID
            **/
            public func getTicket(
                ticketId: String,
                
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Edits ticket details of a application level ticket
            * Description: Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
            **/
            public func editTicket(
                ticketId: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create history for specific application level ticket
            * Description: Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func createHistory(
                ticketId: String,
                body: TicketHistoryPayload,
                onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketHistory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets history list for specific application level ticket
            * Description: Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func getTicketHistory(
                ticketId: String,
                
                onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketHistoryList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get specific custom form using it's slug
            * Description: Get specific custom form using it's slug, this is used to view the form.
            **/
            public func getCustomForm(
                slug: String,
                
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Edit the given custom form
            * Description: Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.
            **/
            public func editCustomForm(
                slug: String,
                body: EditCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get list of custom form
            * Description: Get list of custom form for given application
            **/
            public func getCustomForms(
                
                onResponse: @escaping (_ response: CustomFormList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomFormList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Creates a new custom form
            * Description: Creates a new custom form for given application
            **/
            public func createCustomForm(
                body: CreateCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get Token to join a specific Video Room using it's unqiue name
            * Description: Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
            **/
            public func getTokenForVideoRoom(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetTokenForVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/token",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetTokenForVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get participants of a specific Video Room using it's unique name
            * Description: Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
            **/
            public func getVideoParticipants(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetParticipantsInsideVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/participants",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetParticipantsInsideVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Open a video room.
            * Description: Open a video room.
            **/
            public func openVideoRoom(
                body: CreateVideoRoomPayload,
                onResponse: @escaping (_ response: CreateVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Close the video room and force all participants to leave.
            * Description: Close the video room and force all participants to leave.
            **/
            public func closeVideoRoom(
                
                onResponse: @escaping (_ response: CloseVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CloseVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class Theme {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Gets list of themes in theme library
            * Description: Gets list of themes in theme library
            **/
            public func getThemeLibrary(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Add theme to theme library
            * Description: Add theme to theme library
            **/
            public func addToThemeLibrary(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Apply theme
            * Description: Apply theme
            **/
            public func applyTheme(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/apply",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Checks if theme is upgradable
            * Description: Checks if theme is upgradable
            **/
            public func isUpgradable(
                themeId: String,
                
                onResponse: @escaping (_ response: UpgradableThemeSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgradable",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpgradableThemeSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Upgrades theme
            * Description: Upgrades theme
            **/
            public func upgradeTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgrade",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets public themes
            * Description: Gets public themes
            **/
            public func getPublicThemes(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/public/library",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create new theme
            * Description: Create new theme
            **/
            public func createTheme(
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get applied theme
            * Description: Get applied theme
            **/
            public func getAppliedTheme(
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets fonts
            * Description: Gets fonts
            **/
            public func getFonts(
                
                onResponse: @escaping (_ response: FontsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/fonts",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(FontsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets theme by id
            * Description: Gets theme by id
            **/
            public func getThemeById(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update theme
            * Description: Update theme
            **/
            public func updateTheme(
                themeId: String,
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete theme
            * Description: Delete theme
            **/
            public func deleteTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets theme for preview
            * Description: Gets theme for preview
            **/
            public func getThemeForPreview(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/preview",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Publish theme
            * Description: Publish theme
            **/
            public func publishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/publish",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Unpublish theme
            * Description: Unpublish theme
            **/
            public func unpublishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unpublish",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Archive theme
            * Description: Archive theme
            **/
            public func archiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/archive",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Unarchive theme
            * Description: Unarchive theme
            **/
            public func unarchiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unarchive",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class Payment {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Get All Brand Payment Gateway Config Secret
            * Description: Get All Brand Payment Gateway Config Secret
            **/
            public func getBrandPaymentGatewayConfig(
                
                onResponse: @escaping (_ response: PaymentGatewayConfigResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentGatewayConfigResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Save Config Secret For Brand Payment Gateway
            * Description: Save Config Secret For Brand Payment Gateway
            **/
            public func saveBrandPaymentGatewayConfig(
                body: PaymentGatewayConfigRequest,
                onResponse: @escaping (_ response: PaymentGatewayToBeReviewed?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentGatewayToBeReviewed.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Save Config Secret For Brand Payment Gateway
            * Description: Save Config Secret For Brand Payment Gateway
            **/
            public func updateBrandPaymentGatewayConfig(
                body: PaymentGatewayConfigRequest,
                onResponse: @escaping (_ response: PaymentGatewayToBeReviewed?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentGatewayToBeReviewed.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get All Valid Payment Options
            * Description: Use this API to get Get All Valid Payment Options for making payment
            **/
            public func getPaymentModeRoutes(
                refresh: Bool,
                requestType: String,
                
                onResponse: @escaping (_ response: PaymentOptionsResponse?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["refresh"] = refresh
                query["request_type"] = requestType
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/options",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentOptionsResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
        }
        
        
    }
}