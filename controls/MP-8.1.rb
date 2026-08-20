control 'MP-8 (1)' do
  impact 0.5
  title 'Documentation of Process'
  desc <<~DESC
    Document system media downgrading actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-08(01) system media downgrading actions are documented.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media downgrading; system categorization documentation; list of media requiring downgrading; records of media downgrading; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media downgrading responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for media downgrading; mechanisms supporting and/or implementing media downgrading
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can document the media downgrading process by providing information, such as the downgrading technique employed, the identification number of the downgraded media, and the identity of the individual that authorized and/or performed the downgrading action.
  GUIDANCE
  tag nist: ['MP-8 (1)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MP-8 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
