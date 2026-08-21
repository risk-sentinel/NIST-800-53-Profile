control 'SC-46' do
  impact 0.5
  title 'Cross Domain Policy Enforcement'
  desc <<~DESC
    Implement a policy enforcement mechanism #{input('sc_46_odp')} between the physical and/or network interfaces for the connecting security domains.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-46 a policy enforcement mechanism is #{input('sc_46_odp')} implemented between the physical and/or network interfaces for the connecting security domains.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cross-domain policy enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing cross-domain policy enforcement
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For logical policy enforcement mechanisms, organizations avoid creating a logical path between interfaces to prevent the ability to bypass the policy enforcement mechanism. For physical policy enforcement mechanisms, the robustness of physical isolation afforded by the physical implementation of policy enforcement to preclude the presence of logical covert channels penetrating the security domain may be needed. Contact [ncdsmo@nsa.gov](mailto:ncdsmo@nsa.gov) for more information.
  GUIDANCE
  tag nist: ['SC-46']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_46_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-46' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
