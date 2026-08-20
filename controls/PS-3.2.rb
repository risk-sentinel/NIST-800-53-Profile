control 'PS-3 (2)' do
  impact 0.5
  title 'Formal Indoctrination'
  desc <<~DESC
    Verify that individuals accessing a system processing, storing, or transmitting types of classified information that require formal indoctrination, are formally indoctrinated for all the relevant types of information to which they have access on the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-03(02) individuals accessing a system processing, storing, or transmitting types of classified information that require formal indoctrination are formally indoctrinated for all of the relevant types of information to which they have access on the system.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel screening; indoctrination documents; records of screened personnel; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for formal indoctrination for all relevant types of information to which personnel have access
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Types of classified information that require formal indoctrination include Special Access Program (SAP), Restricted Data (RD), and Sensitive Compartmented Information (SCI).
  GUIDANCE
  tag nist: ['PS-3 (2)']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PS-3 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
