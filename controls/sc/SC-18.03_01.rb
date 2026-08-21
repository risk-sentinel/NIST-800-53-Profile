control 'SC-18(03)[01]' do
  impact 0.5
  title "the download of #{input('sc_18_03_odp')} is prevented;"
  desc <<~DESC
    Prevent the download and execution of #{input('sc_18_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the download of #{input('sc_18_03_odp')} is prevented;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing mobile code; mobile code usage restrictions; mobile code implementation policy and procedures; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with responsibilities for managing mobile code
      TEST: Mechanisms preventing the download and execution of unacceptable mobile code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-18 (3)']
  tag control: 'SC-18 (3)'
  tag objective: 'SC-18(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_18_3: true
  tag odp: %w{sc_18_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-18(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
