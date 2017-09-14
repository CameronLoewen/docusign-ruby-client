# DocuSign_eSign::NewAccountSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | The account ID associated with the envelope. | [optional] 
**account_id_guid** | **String** | The GUID associated with the account ID. | [optional] 
**account_name** | **String** | The account name for the new account. | [optional] 
**api_password** | **String** | Contains a token that can be used for authentication in API calls instead of using the user name and password. | [optional] 
**base_url** | **String** | The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri&#39;s that are relative to this baseUrl. | [optional] 
**billing_plan_preview** | [**BillingPlanPreview**](BillingPlanPreview.md) |  | [optional] 
**user_id** | **String** | Specifies the user ID of the new user. | [optional] 


