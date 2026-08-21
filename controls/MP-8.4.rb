control 'MP-8 (4)' do
  impact 0.5
  title 'Classified Information'
  desc <<~DESC
    Downgrade system media containing classified information prior to release to individuals without required access authorizations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-08(04)[01] system media containing classified information is identified;
      MP-08(04)[02] system media containing classified information is downgraded prior to release to individuals without required access authorizations.

    Assessment methods and objects:
      EXAMINE: System media protection policy; access authorization policy; procedures addressing downgrading of media containing classified information; procedures addressing handling of classified information; NSA standards and policies regarding protection of classified information; media downgrading records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media downgrading responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for media downgrading; mechanisms supporting and/or implementing media downgrading
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Downgrading of classified information uses approved sanitization tools, techniques, and procedures to transfer information confirmed to be unclassified from classified systems to unclassified media.
  GUIDANCE
  tag nist: ['MP-8 (4)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MP-8 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
