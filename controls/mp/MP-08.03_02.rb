control 'MP-08(03)[02]' do
  impact 0.5
  title "system media containing controlled unclassified information is downgraded prior to public release."
  desc <<~DESC
    Downgrade system media containing controlled unclassified information prior to public release.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system media containing controlled unclassified information is downgraded prior to public release.

    Assessment methods and objects:
      EXAMINE: System media protection policy; access authorization policy; procedures addressing downgrading of media containing CUI; applicable federal and organizational standards and policies regarding protection of CUI; media downgrading records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media downgrading responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for media downgrading; mechanisms supporting and/or implementing media downgrading
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The downgrading of controlled unclassified information uses approved sanitization tools, techniques, and procedures.
  GUIDANCE
  tag nist: ['MP-8 (3)']
  tag control: 'MP-8 (3)'
  tag objective: 'MP-08(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}
  tag control_mp_8_3: true

  describe 'NIST SP 800-53A Rev 5 objective MP-08(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
