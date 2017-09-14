# DocuSign_eSign::PowerFormRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_code** | **String** | If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account’s access code format setting.  If blank, but the signer &#x60;accessCode&#x60; property is set in the envelope, then that value is used.  If blank and the signer &#x60;accessCode&#x60; property is not set, then the access code is not required. | [optional] 
**access_code_locked** | **String** |  | [optional] 
**access_code_required** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**email_locked** | **String** |  | [optional] 
**id_check_configuration_name** | **String** | Specifies authentication check by name. The names used here must be the same as the authentication type names used by the account (these name can also be found in the web console sending interface in the Identify list for a recipient,) This overrides any default authentication setting.  *Example*: Your account has ID Check and SMS Authentication available and in the web console Identify list these appear as &#39;ID Check $&#39; and &#39;SMS Auth $&#39;. To use ID check in an envelope, the idCheckConfigurationName should be &#39;ID Check &#39;. If you wanted to use SMS, it would be &#39;SMS Auth $&#39; and you would need to add you would need to add phone number information to the &#x60;smsAuthentication&#x60; node. | [optional] 
**id_check_required** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**recipient_type** | **String** |  | [optional] 
**role_name** | **String** | Optional element. Specifies the role name associated with the recipient.&lt;br/&gt;&lt;br/&gt;This is required when working with template recipients. | [optional] 
**routing_order** | **String** | Specifies the routing order of the recipient in the envelope.  | [optional] 
**template_requires_id_lookup** | **String** |  | [optional] 
**user_name_locked** | **String** |  | [optional] 


