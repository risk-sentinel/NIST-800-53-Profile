control 'AC-17(01)[01]' do
  impact 0.5
  title "automated mechanisms are employed to monitor remote access methods;"
  desc <<~DESC
    Employ automated mechanisms to monitor and control remote access methods.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated mechanisms are employed to monitor remote access methods;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing remote access to the system; system design documentation; system configuration settings and associated documentation; system audit records; system monitoring records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Automated mechanisms monitoring and controlling remote access methods
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Monitoring and control of remote access methods allows organizations to detect attacks and help ensure compliance with remote access policies by auditing the connection activities of remote users on a variety of system components, including servers, notebook computers, workstations, smart phones, and tablets. Audit logging for remote access is enforced by [AU-2](#au-2) . Audit events are defined in [AU-2a](#au-2_smt.a).
  GUIDANCE
  tag nist: ['AC-17 (1)']
  tag control: 'AC-17 (1)'
  tag objective: 'AC-17(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_17_1: true

  describe 'NIST SP 800-53A Rev 5 objective AC-17(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
