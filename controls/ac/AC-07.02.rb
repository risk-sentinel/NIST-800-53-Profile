control 'AC-07(02)' do
  impact 0.5
  title "information is purged or wiped from #{input('ac_07_02_odp_01')} based on #{input('ac_07_02_odp_02')} after #{input('ac_07_02_odp_03')} consecutive, unsuccessful device logon attempts."
  desc <<~DESC
    Purge or wipe information from #{input('ac_07_02_odp_01')} based on #{input('ac_07_02_odp_02')} after #{input('ac_07_02_odp_03')} consecutive, unsuccessful device logon attempts.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information is purged or wiped from #{input('ac_07_02_odp_01')} based on #{input('ac_07_02_odp_02')} after #{input('ac_07_02_odp_03')} consecutive, unsuccessful device logon attempts.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing unsuccessful logon attempts on mobile devices; system design documentation; system configuration settings and associated documentation; list of mobile devices to be purged/wiped after organization-defined consecutive, unsuccessful device logon attempts; list of purging/wiping requirements or techniques for mobile devices; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing access control policy for unsuccessful device logon attempts
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A mobile device is a computing device that has a small form factor such that it can be carried by a single individual; is designed to operate without a physical connection; possesses local, non-removable or removable data storage; and includes a self-contained power source. Purging or wiping the device applies only to mobile devices for which the organization-defined number of unsuccessful logons occurs. The logon is to the mobile device, not to any one account on the device. Successful logons to accounts on mobile devices reset the unsuccessful logon count to zero. Purging or wiping may be unnecessary if the information on the device is protected with sufficiently strong encryption mechanisms.
  GUIDANCE
  tag nist: ['AC-7 (2)']
  tag control: 'AC-7 (2)'
  tag objective: 'AC-07(02)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_7_2: true
  tag odp: %w{ac_07_02_odp_01 ac_07_02_odp_02 ac_07_02_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective AC-07(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
