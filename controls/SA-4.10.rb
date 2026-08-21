control 'SA-4 (10)' do
  impact 0.5
  title 'Use of Approved PIV Products'
  desc <<~DESC
    Employ only information technology products on the FIPS 201-approved products list for Personal Identity Verification (PIV) capability implemented within organizational systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(10) only information technology products on the FIPS 201-approved products list for the Personal Identity Verification (PIV) capability implemented within organizational systems are employed.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; solicitation documentation; acquisition documentation; acquisition contracts for the system, system component, or system service; service level agreements; FIPS 201 approved products list; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for determining system security requirements; organizational personnel with the responsibility for ensuring that only FIPS 201- approved products are implemented; organizational personnel with information security responsibilities
      TEST: Organizational processes for selecting and employing FIPS 201-approved products
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Products on the FIPS 201-approved products list meet NIST requirements for Personal Identity Verification (PIV) of Federal Employees and Contractors. PIV cards are used for multi-factor authentication in systems and organizations.
  GUIDANCE
  tag nist: ['SA-4 (10)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SA-4 (10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
