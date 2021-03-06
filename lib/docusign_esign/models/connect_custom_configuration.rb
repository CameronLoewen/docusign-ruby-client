=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class ConnectCustomConfiguration
    # When set to **true**, data is sent to the urlToPublishTo web address. This option can be set to false to stop sending data while maintaining the Connect configuration information.
    attr_accessor :allow_envelope_publish

    # When set to **true**, the tracked envelope and recipient events for all users, including users that are added a later time, are sent through Connect.
    attr_accessor :all_users

    # If merge field's are being used, specifies the type of the merge field. The only  supported value is **salesforce**.
    attr_accessor :configuration_type

    #  Specifies the DocuSign generated ID for the Connect configuration.  
    attr_accessor :connect_id

    # This turns Connect logging on or off. When set to **true**, logging is turned on.
    attr_accessor :enable_log

    # A comma separated list of �Envelope� related events that are tracked through Connect. The possible event values are: Sent, Delivered, Completed, Declined, and Voided.
    attr_accessor :envelope_events

    # When set to **true**, the Connect Service includes the Certificate of Completion with completed envelopes. 
    attr_accessor :include_certificate_of_completion

    # 
    attr_accessor :include_cert_soap_header

    # When set to **true**, the Document Fields associated with envelope documents are included in the data. Document Fields are optional custom name-value pairs added to documents using the API. 
    attr_accessor :include_document_fields

    # When set to **true**, Connect will send the PDF document along with the update XML.
    attr_accessor :include_documents

    # When set to **true**, Connect will include the voidedReason for voided envelopes.
    attr_accessor :include_envelope_void_reason

    # When set to **true**, Connect will include the sender account as Custom Field in the data.
    attr_accessor :include_sender_accountas_custom_field

    # When set to **true**, Connect will include the envelope time zone information.
    attr_accessor :include_time_zone_information

    # The name of the Connect configuration. The name helps identify the configuration in the list.
    attr_accessor :name

    # A comma separated list of �Recipient� related events that are tracked through Connect. The possible event values are: Sent, Delivered, Completed, Declined, AuthenticationFailed, and AutoResponded.
    attr_accessor :recipient_events

    # When set to **true**, and a publication message fails to be acknowledged, the message goes back into the queue and the system will retry delivery after a successful acknowledgement is received. If the delivery fails a second time, the message is not returned to the queue for sending until Connect receives a successful acknowledgement and it has been at least 24 hours since the previous retry. There is a maximum of ten retries Alternately, you can use Republish Connect Information to manually republish the envelope information.
    attr_accessor :requires_acknowledgement

    # When set to **true**, Connect messages are signed with an X509 certificate. This provides support for 2-way SSL.
    attr_accessor :sign_message_with_x509_certificate

    # The namespace of the SOAP interface.  The namespace value must be set if useSoapInterface is set to true.
    attr_accessor :soap_namespace

    # This is the web address and name of your listener or Retrieving Service endpoint. You need to include HTTPS:// in the web address.
    attr_accessor :url_to_publish_to

    # A comma separated list of userIds. This sets the users associated with the tracked envelope and recipient events. When one of the event occurs for a set user, the information is sent through Connect.   ###### Note: If allUsers is set to �false� then you must provide a list of user id�s.
    attr_accessor :user_ids

    # When set to **true**, indicates that the `urlToPublishTo` property contains a SOAP endpoint.
    attr_accessor :use_soap_interface


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_envelope_publish' => :'allowEnvelopePublish',
        :'all_users' => :'allUsers',
        :'configuration_type' => :'configurationType',
        :'connect_id' => :'connectId',
        :'enable_log' => :'enableLog',
        :'envelope_events' => :'envelopeEvents',
        :'include_certificate_of_completion' => :'includeCertificateOfCompletion',
        :'include_cert_soap_header' => :'includeCertSoapHeader',
        :'include_document_fields' => :'includeDocumentFields',
        :'include_documents' => :'includeDocuments',
        :'include_envelope_void_reason' => :'includeEnvelopeVoidReason',
        :'include_sender_accountas_custom_field' => :'includeSenderAccountasCustomField',
        :'include_time_zone_information' => :'includeTimeZoneInformation',
        :'name' => :'name',
        :'recipient_events' => :'recipientEvents',
        :'requires_acknowledgement' => :'requiresAcknowledgement',
        :'sign_message_with_x509_certificate' => :'signMessageWithX509Certificate',
        :'soap_namespace' => :'soapNamespace',
        :'url_to_publish_to' => :'urlToPublishTo',
        :'user_ids' => :'userIds',
        :'use_soap_interface' => :'useSoapInterface'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_envelope_publish' => :'String',
        :'all_users' => :'String',
        :'configuration_type' => :'String',
        :'connect_id' => :'String',
        :'enable_log' => :'String',
        :'envelope_events' => :'String',
        :'include_certificate_of_completion' => :'String',
        :'include_cert_soap_header' => :'String',
        :'include_document_fields' => :'String',
        :'include_documents' => :'String',
        :'include_envelope_void_reason' => :'String',
        :'include_sender_accountas_custom_field' => :'String',
        :'include_time_zone_information' => :'String',
        :'name' => :'String',
        :'recipient_events' => :'String',
        :'requires_acknowledgement' => :'String',
        :'sign_message_with_x509_certificate' => :'String',
        :'soap_namespace' => :'String',
        :'url_to_publish_to' => :'String',
        :'user_ids' => :'String',
        :'use_soap_interface' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'allowEnvelopePublish')
        self.allow_envelope_publish = attributes[:'allowEnvelopePublish']
      end

      if attributes.has_key?(:'allUsers')
        self.all_users = attributes[:'allUsers']
      end

      if attributes.has_key?(:'configurationType')
        self.configuration_type = attributes[:'configurationType']
      end

      if attributes.has_key?(:'connectId')
        self.connect_id = attributes[:'connectId']
      end

      if attributes.has_key?(:'enableLog')
        self.enable_log = attributes[:'enableLog']
      end

      if attributes.has_key?(:'envelopeEvents')
        self.envelope_events = attributes[:'envelopeEvents']
      end

      if attributes.has_key?(:'includeCertificateOfCompletion')
        self.include_certificate_of_completion = attributes[:'includeCertificateOfCompletion']
      end

      if attributes.has_key?(:'includeCertSoapHeader')
        self.include_cert_soap_header = attributes[:'includeCertSoapHeader']
      end

      if attributes.has_key?(:'includeDocumentFields')
        self.include_document_fields = attributes[:'includeDocumentFields']
      end

      if attributes.has_key?(:'includeDocuments')
        self.include_documents = attributes[:'includeDocuments']
      end

      if attributes.has_key?(:'includeEnvelopeVoidReason')
        self.include_envelope_void_reason = attributes[:'includeEnvelopeVoidReason']
      end

      if attributes.has_key?(:'includeSenderAccountasCustomField')
        self.include_sender_accountas_custom_field = attributes[:'includeSenderAccountasCustomField']
      end

      if attributes.has_key?(:'includeTimeZoneInformation')
        self.include_time_zone_information = attributes[:'includeTimeZoneInformation']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'recipientEvents')
        self.recipient_events = attributes[:'recipientEvents']
      end

      if attributes.has_key?(:'requiresAcknowledgement')
        self.requires_acknowledgement = attributes[:'requiresAcknowledgement']
      end

      if attributes.has_key?(:'signMessageWithX509Certificate')
        self.sign_message_with_x509_certificate = attributes[:'signMessageWithX509Certificate']
      end

      if attributes.has_key?(:'soapNamespace')
        self.soap_namespace = attributes[:'soapNamespace']
      end

      if attributes.has_key?(:'urlToPublishTo')
        self.url_to_publish_to = attributes[:'urlToPublishTo']
      end

      if attributes.has_key?(:'userIds')
        self.user_ids = attributes[:'userIds']
      end

      if attributes.has_key?(:'useSoapInterface')
        self.use_soap_interface = attributes[:'useSoapInterface']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_envelope_publish == o.allow_envelope_publish &&
          all_users == o.all_users &&
          configuration_type == o.configuration_type &&
          connect_id == o.connect_id &&
          enable_log == o.enable_log &&
          envelope_events == o.envelope_events &&
          include_certificate_of_completion == o.include_certificate_of_completion &&
          include_cert_soap_header == o.include_cert_soap_header &&
          include_document_fields == o.include_document_fields &&
          include_documents == o.include_documents &&
          include_envelope_void_reason == o.include_envelope_void_reason &&
          include_sender_accountas_custom_field == o.include_sender_accountas_custom_field &&
          include_time_zone_information == o.include_time_zone_information &&
          name == o.name &&
          recipient_events == o.recipient_events &&
          requires_acknowledgement == o.requires_acknowledgement &&
          sign_message_with_x509_certificate == o.sign_message_with_x509_certificate &&
          soap_namespace == o.soap_namespace &&
          url_to_publish_to == o.url_to_publish_to &&
          user_ids == o.user_ids &&
          use_soap_interface == o.use_soap_interface
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_envelope_publish, all_users, configuration_type, connect_id, enable_log, envelope_events, include_certificate_of_completion, include_cert_soap_header, include_document_fields, include_documents, include_envelope_void_reason, include_sender_accountas_custom_field, include_time_zone_information, name, recipient_events, requires_acknowledgement, sign_message_with_x509_certificate, soap_namespace, url_to_publish_to, user_ids, use_soap_interface].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
