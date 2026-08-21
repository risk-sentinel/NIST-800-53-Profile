control 'SI-13(03)' do
  impact 0.5
  title "transfers are initiated manually between active and standby system components when the use of the active component reaches #{input('si_13_03_odp')} of the mean time to failure."
  desc <<~DESC
    Manually initiate transfers between active and standby system components when the use of the active component reaches #{input('si_13_03_odp')} of the mean time to failure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      transfers are initiated manually between active and standby system components when the use of the active component reaches #{input('si_13_03_odp')} of the mean time to failure.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing predictable failure prevention; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for MTTF activities; organizational personnel with information security responsibilities; system/network administrators; organizational personnel with contingency planning responsibilities
      TEST: Organizational processes for managing MTTF and conducting the manual transfer between active and standby components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For example, if the MTTF for a system component is 100 days and the MTTF percentage defined by the organization is 90 percent, the manual transfer would occur after 90 days.
  GUIDANCE
  tag nist: ['SI-13 (3)']
  tag control: 'SI-13 (3)'
  tag objective: 'SI-13(03)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_13_3: true
  tag odp: %w{si_13_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-13(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
