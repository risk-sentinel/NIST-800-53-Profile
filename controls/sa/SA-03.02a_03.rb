control 'SA-03(02)a.[03]' do
  impact 0.5
  title "the use of live data in pre-production environments is controlled for the system, system component, or system service;"
  desc <<~DESC
    (a) Approve, document, and control the use of live data in preproduction environments for the system, system component, or system service; and
    (b) Protect preproduction environments for the system, system component, or system service at the same impact or classification level as any live data in use within the preproduction environments.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of live data in pre-production environments is controlled for the system, system component, or system service;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of security and privacy into the system development life cycle process; system development life cycle documentation; security risk assessment documentation; privacy impact assessment; privacy risk assessment documentation; system security plan; privacy plan; data mapping documentation; personally identifiable information processing policy; procedures addressing the authority to test with personally identifiable information; procedures addressing the minimization of personally identifiable information used in testing, training, and research; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibility; organizational personnel with system life cycle development responsibilities
      TEST: Organizational processes the use of live data in pre-production environments; mechanisms for protecting live data in pre-production environments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Live data is also referred to as operational data. The use of live or operational data in preproduction (i.e., development, test, and integration) environments can result in significant risks to organizations. In addition, the use of personally identifiable information in testing, research, and training increases the risk of unauthorized disclosure or misuse of such information. Therefore, it is important for the organization to manage any additional risks that may result from the use of live or operational data. Organizations can minimize such risks by using test or dummy data during the design, development, and testing of systems, system components, and system services. Risk assessment techniques may be used to determine if the risk of using live or operational data is acceptable.
  GUIDANCE
  tag nist: ['SA-3 (2)']
  tag control: 'SA-3 (2)'
  tag objective: 'SA-03(02)a.[03]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_3_2: true

  describe 'NIST SP 800-53A Rev 5 objective SA-03(02)a.[03]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
