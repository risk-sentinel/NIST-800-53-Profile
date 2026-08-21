control 'SA-9 (6)' do
  impact 0.5
  title 'Organization-controlled Cryptographic Keys'
  desc <<~DESC
    Maintain exclusive control of cryptographic keys for encrypted material stored or transmitted through an external system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-09(06) exclusive control of cryptographic keys is maintained for encrypted material stored or transmitted through an external system.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing external system services; acquisition contracts for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; procedures addressing organization-controlled cryptographic key management; organizational security requirements or conditions for external providers; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organization personnel with cryptographic key management responsibilities; external providers of system services; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for cryptographic key management; mechanisms for supporting and implementing the management of organization-controlled cryptographic keys
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintaining exclusive control of cryptographic keys in an external system prevents decryption of organizational data by external system staff. Organizational control of cryptographic keys can be implemented by encrypting and decrypting data inside the organization as data is sent to and received from the external system or by employing a component that permits encryption and decryption functions to be local to the external system but allows exclusive organizational access to the encryption keys.
  GUIDANCE
  tag nist: ['SA-9 (6)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-9 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
