control 'SC-11a.' do
  impact 0.5
  title "a #{input('sc_11_odp_01')} isolated trusted communication path is provided for communications between the user and the trusted components of the system;"
  desc <<~DESC
    a. Provide a #{input('sc_11_odp_01')} isolated trusted communications path for communications between the user and the trusted components of the system; and
    b. Permit users to invoke the trusted communications path for communications between the user and the following security functions of the system, including at a minimum, authentication and re-authentication: #{input('sc_11_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a #{input('sc_11_odp_01')} isolated trusted communication path is provided for communications between the user and the trusted components of the system;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing trusted communication paths; security plan; system design documentation; system configuration settings and associated documentation; assessment results from independent, testing organizations; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing trusted communication paths
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Trusted paths are mechanisms by which users can communicate (using input devices such as keyboards) directly with the security functions of systems with the requisite assurance to support security policies. Trusted path mechanisms can only be activated by users or the security functions of organizational systems. User responses that occur via trusted paths are protected from modification by and disclosure to untrusted applications. Organizations employ trusted paths for trustworthy, high-assurance connections between security functions of systems and users, including during system logons. The original implementations of trusted paths employed an out-of-band signal to initiate the path, such as using the <BREAK> key, which does not transmit characters that can be spoofed. In later implementations, a key combination that could not be hijacked was used (e.g., the <CTRL> + <ALT> + <DEL> keys). Such key combinations, however, are platform-specific and may not provide a trusted path implementation in every case. The enforcement of trusted communications paths is provided by a specific implementation that meets the reference monitor concept.
  GUIDANCE
  tag nist: ['SC-11']
  tag control: 'SC-11'
  tag objective: 'SC-11a.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_11: true
  tag odp: %w{sc_11_odp_01 sc_11_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-11a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
