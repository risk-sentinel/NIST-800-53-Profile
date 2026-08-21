control 'AC-20b.' do
  impact 0.5
  title "the use of #{input('ac_20_odp_04')} is prohibited (if applicable)."
  desc <<~DESC
    a. #{input('ac_20_odp_01')} , consistent with the trust relationships established with other organizations owning, operating, and/or maintaining external systems, allowing authorized individuals to:
      1. Access the system from external systems; and
      2. Process, store, or transmit organization-controlled information using external systems; or
    b. Prohibit the use of #{input('ac_20_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of #{input('ac_20_odp_04')} is prohibited (if applicable).

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the use of external systems; external systems terms and conditions; list of types of applications accessible from external systems; maximum security categorization for information processed, stored, or transmitted on external systems; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining terms and conditions for use of external systems to access organizational systems; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing terms and conditions on the use of external systems
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External systems are systems that are used by but not part of organizational systems, and for which the organization has no direct control over the implementation of required controls or the assessment of control effectiveness. External systems include personally owned systems, components, or devices; privately owned computing and communications devices in commercial or public facilities; systems owned or controlled by nonfederal organizations; systems managed by contractors; and federal information systems that are not owned by, operated by, or under the direct supervision or authority of the organization. External systems also include systems owned or operated by other components within the same organization and systems within the organization with different authorization boundaries. Organizations have the option to prohibit the use of any type of external system or prohibit the use of specified types of external systems, (e.g., prohibit the use of any external system that is not organizationally owned or prohibit the use of personally-owned systems).

    For some external systems (i.e., systems operated by other organizations), the trust relationships that have been established between those organizations and the originating organization may be such that no explicit terms and conditions are required. Systems within these organizations may not be considered external. These situations occur when, for example, there are pre-existing information exchange agreements (either implicit or explicit) established between organizations or components or when such agreements are specified by applicable laws, executive orders, directives, regulations, policies, or standards. Authorized individuals include organizational personnel, contractors, or other individuals with authorized access to organizational systems and over which organizations have the authority to impose specific rules of behavior regarding system access. Restrictions that organizations impose on authorized individuals need not be uniform, as the restrictions may vary depending on trust relationships between organizations. Therefore, organizations may choose to impose different security restrictions on contractors than on state, local, or tribal governments.

    External systems used to access public interfaces to organizational systems are outside the scope of [AC-20](#ac-20) . Organizations establish specific terms and conditions for the use of external systems in accordance with organizational security policies and procedures. At a minimum, terms and conditions address the specific types of applications that can be accessed on organizational systems from external systems and the highest security category of information that can be processed, stored, or transmitted on external systems. If the terms and conditions with the owners of the external systems cannot be established, organizations may impose restrictions on organizational personnel using those external systems.
  GUIDANCE
  tag nist: ['AC-20']
  tag control: 'AC-20'
  tag objective: 'AC-20b.'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_20: true
  tag odp: %w{ac_20_odp_01 ac_20_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective AC-20b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
