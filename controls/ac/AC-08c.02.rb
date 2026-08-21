control 'AC-08c.02' do
  impact 0.5
  title "for publicly accessible systems, any references to monitoring, recording, or auditing that are consistent with privacy accommodations for such systems that generally prohibit those activities are displayed;"
  desc <<~DESC
    a. Display #{input('ac_08_odp_01')} to users before granting access to the system that provides privacy and security notices consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines and state that:
      1. Users are accessing a U.S. Government system;
      2. System usage may be monitored, recorded, and subject to audit;
      3. Unauthorized use of the system is prohibited and subject to criminal and civil penalties; and
      4. Use of the system indicates consent to monitoring and recording;
    b. Retain the notification message or banner on the screen until users acknowledge the usage conditions and take explicit actions to log on to or further access the system; and
    c. For publicly accessible systems:
      1. Display system use information #{input('ac_08_odp_02')} , before granting further access to the publicly accessible system;
      2. Display references, if any, to monitoring, recording, or auditing that are consistent with privacy accommodations for such systems that generally prohibit those activities; and
      3. Include a description of the authorized uses of the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      for publicly accessible systems, any references to monitoring, recording, or auditing that are consistent with privacy accommodations for such systems that generally prohibit those activities are displayed;

    Assessment methods and objects:
      EXAMINE: Access control policy; privacy and security policies, procedures addressing system use notification; documented approval of system use notification messages or banners; system audit records; user acknowledgements of notification message or banner; system design documentation; system configuration settings and associated documentation; system use notification messages; system security plan; privacy plan; privacy impact assessment; privacy assessment report; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security and privacy responsibilities; legal counsel; system developers
      TEST: Mechanisms implementing system use notification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System use notifications can be implemented using messages or warning banners displayed before individuals log in to systems. System use notifications are used only for access via logon interfaces with human users. Notifications are not required when human interfaces do not exist. Based on an assessment of risk, organizations consider whether or not a secondary system use notification is needed to access applications or other system resources after the initial network logon. Organizations consider system use notification messages or banners displayed in multiple languages based on organizational needs and the demographics of system users. Organizations consult with the privacy office for input regarding privacy messaging and the Office of the General Counsel or organizational equivalent for legal review and approval of warning banner content.
  GUIDANCE
  tag nist: ['AC-8']
  tag control: 'AC-8'
  tag objective: 'AC-08c.02'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_8: true
  tag odp: %w{ac_08_odp_01 ac_08_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-08c.02' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
