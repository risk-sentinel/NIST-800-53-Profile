control 'SC-25[02]' do
  impact 0.5
  title "minimal information storage on #{input('sc_25_odp')} is allocated."
  desc <<~DESC
    Employ minimal functionality and information storage on the following system components: #{input('sc_25_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      minimal information storage on #{input('sc_25_odp')} is allocated.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing use of thin nodes; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing thin nodes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The deployment of system components with minimal functionality reduces the need to secure every endpoint and may reduce the exposure of information, systems, and services to attacks. Reduced or minimal functionality includes diskless nodes and thin client technologies.
  GUIDANCE
  tag nist: ['SC-25']
  tag control: 'SC-25'
  tag objective: 'SC-25[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_25: true
  tag odp: %w{sc_25_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-25[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
