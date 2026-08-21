control 'MA-05(01)(b)' do
  impact 0.5
  title "#{input('ma_05_01_odp')} are developed and implemented in the event that a system cannot be sanitized, removed, or disconnected from the system."
  desc <<~DESC
    (a) Implement procedures for the use of maintenance personnel that lack appropriate security clearances or are not U.S. citizens, that include the following requirements:
      (1) Maintenance personnel who do not have needed access authorizations, clearances, or formal access approvals are escorted and supervised during the performance of maintenance and diagnostic activities on the system by approved organizational personnel who are fully cleared, have appropriate access authorizations, and are technically qualified; and
      (2) Prior to initiating maintenance or diagnostic activities by personnel who do not have needed access authorizations, clearances or formal access approvals, all volatile information storage components within the system are sanitized and all nonvolatile storage media are removed or physically disconnected from the system and secured; and
    (b) Develop and implement #{input('ma_05_01_odp')} in the event a system component cannot be sanitized, removed, or disconnected from the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ma_05_01_odp')} are developed and implemented in the event that a system cannot be sanitized, removed, or disconnected from the system.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing maintenance personnel; system media protection policy; physical and environmental protection policy; list of maintenance personnel requiring escort/supervision; maintenance records; access control records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with personnel security responsibilities; organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for media sanitization; system/network administrators
      TEST: Organizational processes for managing maintenance personnel without appropriate access; mechanisms supporting and/or implementing alternative security safeguards; mechanisms supporting and/or implementing information storage component sanitization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Procedures for individuals who lack appropriate security clearances or who are not U.S. citizens are intended to deny visual and electronic access to classified or controlled unclassified information contained on organizational systems. Procedures for the use of maintenance personnel can be documented in security plans for the systems.
  GUIDANCE
  tag nist: ['MA-5 (1)']
  tag control: 'MA-5 (1)'
  tag objective: 'MA-05(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ma_5_1: true
  tag odp: %w{ma_05_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective MA-05(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
