control 'SC-6' do
  impact 0.5
  title 'Resource Availability'
  desc <<~DESC
    Protect the availability of resources by allocating #{input('sc_06_odp_01')} by #{input('sc_06_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-06 the availability of resources is protected by allocating #{input('sc_06_odp_01')} by #{input('sc_06_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing prioritization of system resources; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing a resource allocation capability; safeguards employed to protect availability of resources
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Priority protection prevents lower-priority processes from delaying or interfering with the system that services higher-priority processes. Quotas prevent users or processes from obtaining more than predetermined amounts of resources.
  GUIDANCE
  tag nist: ['SC-6']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_06_odp_01 sc_06_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
