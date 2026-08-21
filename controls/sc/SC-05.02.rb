control 'SC-05(02)' do
  impact 0.5
  title "capacity, bandwidth, or other redundancies to limit the effects of information flooding denial-of-service attacks are managed."
  desc <<~DESC
    Manage capacity, bandwidth, or other redundancy to limit the effects of information flooding denial-of-service attacks.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      capacity, bandwidth, or other redundancies to limit the effects of information flooding denial-of-service attacks are managed.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing denial-of-service protection; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with incident response responsibilities; system developer
      TEST: Mechanisms implementing the management of system bandwidth, capacity, and redundancy to limit the effects of information flooding denial-of-service attacks
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Managing capacity ensures that sufficient capacity is available to counter flooding attacks. Managing capacity includes establishing selected usage priorities, quotas, partitioning, or load balancing.
  GUIDANCE
  tag nist: ['SC-5 (2)']
  tag control: 'SC-5 (2)'
  tag objective: 'SC-05(02)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_5_2: true

  describe 'NIST SP 800-53A Rev 5 objective SC-05(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
