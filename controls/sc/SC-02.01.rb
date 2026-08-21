control 'SC-02(01)' do
  impact 0.5
  title "the presentation of system management functionality is prevented at interfaces to non-privileged users."
  desc <<~DESC
    Prevent the presentation of system management functionality at interfaces to non-privileged users.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the presentation of system management functionality is prevented at interfaces to non-privileged users.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing application partitioning; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; non-privileged users of the system; system developer
      TEST: Separation of user functionality from system management functionality
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Preventing the presentation of system management functionality at interfaces to non-privileged users ensures that system administration options, including administrator privileges, are not available to the general user population. Restricting user access also prohibits the use of the grey-out option commonly used to eliminate accessibility to such information. One potential solution is to withhold system administration options until users establish sessions with administrator privileges.
  GUIDANCE
  tag nist: ['SC-2 (1)']
  tag control: 'SC-2 (1)'
  tag objective: 'SC-02(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_2_1: true

  describe 'NIST SP 800-53A Rev 5 objective SC-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
