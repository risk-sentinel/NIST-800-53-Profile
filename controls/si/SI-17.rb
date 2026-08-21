control 'SI-17' do
  impact 0.5
  title "#{input('si_17_odp_01')} are implemented when #{input('si_17_odp_02')} occur."
  desc <<~DESC
    Implement the indicated fail-safe procedures when the indicated failures occur: #{input('si_17_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_17_odp_01')} are implemented when #{input('si_17_odp_02')} occur.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; documentation addressing fail-safe procedures for the system; system design documentation; system configuration settings and associated documentation; list of security safeguards protecting the system memory from unauthorized code execution; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for fail-safe procedures; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational fail-safe procedures; automated mechanisms supporting and/or implementing fail-safe procedures
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failure conditions include the loss of communications among critical system components or between system components and operational facilities. Fail-safe procedures include alerting operator personnel and providing specific instructions on subsequent steps to take. Subsequent steps may include doing nothing, reestablishing system settings, shutting down processes, restarting the system, or contacting designated organizational personnel.
  GUIDANCE
  tag nist: ['SI-17']
  tag control: 'SI-17'
  tag objective: 'SI-17'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_17: true
  tag odp: %w{si_17_odp_01 si_17_odp_02 si_17_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SI-17' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
