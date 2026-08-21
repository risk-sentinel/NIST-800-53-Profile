control 'AC-06(03)[02]' do
  impact 0.5
  title "the rationale for authorizing network access to privileged commands is documented in the security plan for the system."
  desc <<~DESC
    Authorize network access to #{input('ac_06_03_odp_01')} only for #{input('ac_06_03_odp_02')} and document the rationale for such access in the security plan for the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the rationale for authorizing network access to privileged commands is documented in the security plan for the system.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; system configuration settings and associated documentation; system audit records; list of operational needs for authorizing network access to privileged commands; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Network access is any access across a network connection in lieu of local access (i.e., user being physically present at the device).
  GUIDANCE
  tag nist: ['AC-6 (3)']
  tag control: 'AC-6 (3)'
  tag objective: 'AC-06(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ac_6_3: true
  tag odp: %w{ac_06_03_odp_01 ac_06_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-06(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
