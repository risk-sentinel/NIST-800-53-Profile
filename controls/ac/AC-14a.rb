control 'AC-14a.' do
  impact 0.5
  title "#{input('ac_14_odp')} that can be performed on the system without identification or authentication consistent with organizational mission and business functions are identified;"
  desc <<~DESC
    a. Identify #{input('ac_14_odp')} that can be performed on the system without identification or authentication consistent with organizational mission and business functions; and
    b. Document and provide supporting rationale in the security plan for the system, user actions not requiring identification or authentication.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_14_odp')} that can be performed on the system without identification or authentication consistent with organizational mission and business functions are identified;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing permitted actions without identification or authentication; system configuration settings and associated documentation; security plan; list of user actions that can be performed without identification or authentication; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Specific user actions may be permitted without identification or authentication if organizations determine that identification and authentication are not required for the specified user actions. Organizations may allow a limited number of user actions without identification or authentication, including when individuals access public websites or other publicly accessible federal systems, when individuals use mobile phones to receive calls, or when facsimiles are received. Organizations identify actions that normally require identification or authentication but may, under certain circumstances, allow identification or authentication mechanisms to be bypassed. Such bypasses may occur, for example, via a software-readable physical switch that commands bypass of the logon functionality and is protected from accidental or unmonitored use. Permitting actions without identification or authentication does not apply to situations where identification and authentication have already occurred and are not repeated but rather to situations where identification and authentication have not yet occurred. Organizations may decide that there are no user actions that can be performed on organizational systems without identification and authentication, and therefore, the value for the assignment operation can be "none."
  GUIDANCE
  tag nist: ['AC-14']
  tag control: 'AC-14'
  tag objective: 'AC-14a.'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_14: true
  tag odp: %w{ac_14_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-14a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
