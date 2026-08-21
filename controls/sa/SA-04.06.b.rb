control 'SA-04(06)(b)' do
  impact 0.5
  title "these products have been evaluated and/or validated by NSA or in accordance with NSA-approved procedures."
  desc <<~DESC
    (a) Employ only government off-the-shelf or commercial off-the-shelf information assurance and information assurance-enabled information technology products that compose an NSA-approved solution to protect classified information when the networks used to transmit the information are at a lower classification level than the information being transmitted; and
    (b) Ensure that these products have been evaluated and/or validated by NSA or in accordance with NSA-approved procedures.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      these products have been evaluated and/or validated by NSA or in accordance with NSA-approved procedures.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system component, or system service; security configurations to be implemented by the developer of the system, system component, or system service; service level agreements; list of deployed IT products/solutions; NSA-approved list; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility to determine system security requirements; organizational personnel responsible for ensuring information assurance products are NSA-approved and are evaluated and/or validated products in accordance with NSA-approved procedures; organizational personnel with information security responsibilities
      TEST: Organizational processes for selecting and employing evaluated and/or validated information assurance products and services that compose an NSA-approved solution to protect classified information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Commercial off-the-shelf IA or IA-enabled information technology products used to protect classified information by cryptographic means may be required to use NSA-approved key management. See [NSA CSFC](#3d575737-98cb-459d-b41c-d7e82b73ad78).
  GUIDANCE
  tag nist: ['SA-4 (6)']
  tag control: 'SA-4 (6)'
  tag objective: 'SA-04(06)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_4_6: true

  describe 'NIST SP 800-53A Rev 5 objective SA-04(06)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
