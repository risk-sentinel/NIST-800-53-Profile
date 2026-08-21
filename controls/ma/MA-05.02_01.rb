control 'MA-05(02)[01]' do
  impact 0.5
  title "personnel performing maintenance and diagnostic activities on a system processing, storing, or transmitting classified information possess security clearances for at least the highest classification level and for compartments of information on the system;"
  desc <<~DESC
    Verify that personnel performing maintenance and diagnostic activities on a system processing, storing, or transmitting classified information possess security clearances and formal access approvals for at least the highest classification level and for compartments of information on the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personnel performing maintenance and diagnostic activities on a system processing, storing, or transmitting classified information possess security clearances for at least the highest classification level and for compartments of information on the system;

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing maintenance personnel; personnel records; maintenance records; access control records; access credentials; access authorizations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with personnel security responsibilities; organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for managing security clearances for maintenance personnel
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel who conduct maintenance on organizational systems may be exposed to classified information during the course of their maintenance activities. To mitigate the inherent risk of such exposure, organizations use maintenance personnel that are cleared (i.e., possess security clearances) to the classification level of the information stored on the system.
  GUIDANCE
  tag nist: ['MA-5 (2)']
  tag control: 'MA-5 (2)'
  tag objective: 'MA-05(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_5_2: true

  describe 'NIST SP 800-53A Rev 5 objective MA-05(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
