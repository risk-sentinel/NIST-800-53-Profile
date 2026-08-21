control 'SC-23(05)' do
  impact 0.5
  title "only the use of #{input('sc_23_05_odp')} for verification of the establishment of protected sessions is allowed."
  desc <<~DESC
    Only allow the use of #{input('sc_23_05_odp')} for verification of the establishment of protected sessions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      only the use of #{input('sc_23_05_odp')} for verification of the establishment of protected sessions is allowed.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing session authenticity; system design documentation; system configuration settings and associated documentation; list of certificate authorities allowed for verification of the establishment of protected sessions; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the management of certificate authorities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Reliance on certificate authorities for the establishment of secure sessions includes the use of Transport Layer Security (TLS) certificates. These certificates, after verification by their respective certificate authorities, facilitate the establishment of protected sessions between web clients and web servers.
  GUIDANCE
  tag nist: ['SC-23 (5)']
  tag control: 'SC-23 (5)'
  tag objective: 'SC-23(05)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_23_5: true
  tag odp: %w{sc_23_05_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-23(05)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
