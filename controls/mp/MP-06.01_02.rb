control 'MP-06(01)[02]' do
  impact 0.5
  title "media sanitization and disposal actions are approved;"
  desc <<~DESC
    Review, approve, track, document, and verify media sanitization and disposal actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      media sanitization and disposal actions are approved;

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; records retention and disposition policy; records retention and disposition procedures; media sanitization and disposal records; review records for media sanitization and disposal actions; approvals for media sanitization and disposal actions; tracking records; verification records; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media sanitization and disposal responsibilities; organizational personnel with records retention and disposition responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Organizational processes for media sanitization; mechanisms supporting and/or implementing media sanitization; mechanisms supporting and/or implementing verification of media sanitization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations review and approve media to be sanitized to ensure compliance with records retention policies. Tracking and documenting actions include listing personnel who reviewed and approved sanitization and disposal actions, types of media sanitized, files stored on the media, sanitization methods used, date and time of the sanitization actions, personnel who performed the sanitization, verification actions taken and personnel who performed the verification, and the disposal actions taken. Organizations verify that the sanitization of the media was effective prior to disposal.
  GUIDANCE
  tag nist: ['MP-6 (1)']
  tag control: 'MP-6 (1)'
  tag objective: 'MP-06(01)[02]'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_mp_6_1: true

  describe 'NIST SP 800-53A Rev 5 objective MP-06(01)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
