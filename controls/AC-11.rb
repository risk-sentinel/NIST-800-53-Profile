control 'AC-11' do
  impact 0.5
  title 'Device Lock'
  desc <<~DESC
    a. Prevent further access to the system by #{input('ac_11_odp_01')} ; and
    b. Retain the device lock until the user reestablishes access using established identification and authentication procedures.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-11a. further access to the system is prevented by #{input('ac_11_odp_01')};
      AC-11b. device lock is retained until the user re-establishes access using established identification and authentication procedures.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing session lock; procedures addressing identification and authentication; system design documentation; system configuration settings and associated documentation; security plan; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing access control policy for session lock
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Device locks are temporary actions taken to prevent logical access to organizational systems when users stop work and move away from the immediate vicinity of those systems but do not want to log out because of the temporary nature of their absences. Device locks can be implemented at the operating system level or at the application level. A proximity lock may be used to initiate the device lock (e.g., via a Bluetooth-enabled device or dongle). User-initiated device locking is behavior or policy-based and, as such, requires users to take physical action to initiate the device lock. Device locks are not an acceptable substitute for logging out of systems, such as when organizations require users to log out at the end of workdays.
  GUIDANCE
  tag nist: ['AC-11']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_11_odp_01}

  describe 'NIST SP 800-53 Rev 5 control AC-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
