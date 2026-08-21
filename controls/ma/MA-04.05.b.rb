control 'MA-04(05)(b)' do
  impact 0.5
  title "#{input('ma_04_05_odp_02')} is/are notified of the date and time of planned nonlocal maintenance."
  desc <<~DESC
    (a) Require the approval of each nonlocal maintenance session by #{input('ma_04_05_odp_01')} ; and
    (b) Notify the following personnel or roles of the date and time of planned nonlocal maintenance: #{input('ma_04_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ma_04_05_odp_02')} is/are notified of the date and time of planned nonlocal maintenance.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; notifications supporting nonlocal maintenance sessions; maintenance records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with notification responsibilities; organizational personnel with approval responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for approving and notifying personnel regarding nonlocal maintenance; mechanisms supporting the notification and approval of nonlocal maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Notification may be performed by maintenance personnel. Approval of nonlocal maintenance is accomplished by personnel with sufficient information security and system knowledge to determine the appropriateness of the proposed maintenance.
  GUIDANCE
  tag nist: ['MA-4 (5)']
  tag control: 'MA-4 (5)'
  tag objective: 'MA-04(05)(b)'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_4_5: true
  tag odp: %w{ma_04_05_odp_01 ma_04_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective MA-04(05)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
