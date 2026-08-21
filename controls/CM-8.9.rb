control 'CM-8 (9)' do
  impact 0.5
  title 'Assignment of Components to Systems'
  desc <<~DESC
    (a) Assign system components to a system; and
    (b) Receive an acknowledgement from #{input('cm_08_09_odp')} of this assignment.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-08(09)(a) system components are assigned to a system;
      CM-08(09)(b) an acknowledgement of the component assignment is received from #{input('cm_08_09_odp')}.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system component inventory; configuration management plan; system security plan; system design documentation; system component inventory; change control records; acknowledgements of system component assignments; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with component inventory management responsibilities; system owner; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for assigning components to systems; organizational processes for acknowledging assignment of components to systems; mechanisms implementing assignment of components to the system; mechanisms implementing acknowledgment of assignment of components to the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System components that are not assigned to a system may be unmanaged, lack the required protection, and become an organizational vulnerability.
  GUIDANCE
  tag nist: ['CM-8 (9)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_08_09_odp}

  describe 'NIST SP 800-53 Rev 5 control CM-8 (9)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
