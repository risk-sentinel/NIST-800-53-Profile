control 'SA-8 (19)' do
  impact 0.5
  title 'Continuous Protection'
  desc <<~DESC
    Implement the security design principle of continuous protection in #{input('sa_08_19_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(19) #{input('sa_08_19_odp')} implement the security design principle of continuous protection.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; access control policy; system and communications protection policy; procedures addressing boundary protection; procedures addressing the security design principle of continuous protection used in the specification, design, development, implementation, and modification of the system; system configuration settings and associated documentation; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; organizational personnel with access enforcement responsibilities; system/network administrators; system developers; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Organizational processes for applying the security design principle of continuous protection in system specification, design, development, implementation, and modification; mechanisms implementing access enforcement functions; mechanisms supporting the application of the security design principle of continuous protection in system specification, design, development, implementation, and modification; mechanisms supporting and/or implementing secure failure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of continuous protection states that components and data used to enforce the security policy have uninterrupted protection that is consistent with the security policy and the security architecture assumptions. No assurances that the system can provide the confidentiality, integrity, availability, and privacy protections for its design capability can be made if there are gaps in the protection. Any assurances about the ability to secure a delivered capability require that data and information are continuously protected. That is, there are no periods during which data and information are left unprotected while under control of the system (i.e., during the creation, storage, processing, or communication of the data and information, as well as during system initialization, execution, failure, interruption, and shutdown). Continuous protection requires adherence to the precepts of the reference monitor concept (i.e., every request is validated by the reference monitor; the reference monitor is able to protect itself from tampering; and sufficient assurance of the correctness and completeness of the mechanism can be ascertained from analysis and testing) and the principle of secure failure and recovery (i.e., preservation of a secure state during error, fault, failure, and successful attack; preservation of a secure state during recovery to normal, degraded, or alternative operational modes).

    Continuous protection also applies to systems designed to operate in varying configurations, including those that deliver full operational capability and degraded-mode configurations that deliver partial operational capability. The continuous protection principle requires that changes to the system security policies be traceable to the operational need that drives the configuration and be verifiable (i.e., it is possible to verify that the proposed changes will not put the system into an insecure state). Insufficient traceability and verification may lead to inconsistent states or protection discontinuities due to the complex or undecidable nature of the problem. The use of pre-verified configuration definitions that reflect the new security policy enables analysis to determine that a transition from old to new policies is essentially atomic and that any residual effects from the old policy are guaranteed to not conflict with the new policy. The ability to demonstrate continuous protection is rooted in the clear articulation of life cycle protection needs as stakeholder security requirements.
  GUIDANCE
  tag nist: ['SA-8 (19)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_19_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (19)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
