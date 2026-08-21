control 'PL-8 (1)' do
  impact 0.5
  title 'Defense in Depth'
  desc <<~DESC
    Design the security and privacy architectures for the system using a defense-in-depth approach that:
      (a) Allocates #{input('pl_08_01_odp_01')} to #{input('pl_08_01_odp_02')} ; and
      (b) Ensures that the allocated controls operate in a coordinated and mutually reinforcing manner.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PL-08(01)(a)
        PL-08(01)(a)[01] the security architecture for the system is designed using a defense-in-depth approach that allocates #{input('pl_08_01_odp_01')} to #{input('pl_08_01_odp_02')};
        PL-08(01)(a)[02] the privacy architecture for the system is designed using a defense-in-depth approach that allocates #{input('pl_08_01_odp_01')} to #{input('pl_08_01_odp_02')};
      PL-08(01)(b)
        PL-08(01)(b)[01] the security architecture for the system is designed using a defense-in-depth approach that ensures the allocated controls operate in a coordinated and mutually reinforcing manner;
        PL-08(01)(b)[02] the privacy architecture for the system is designed using a defense-in-depth approach that ensures the allocated controls operate in a coordinated and mutually reinforcing manner.

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing information security and privacy architecture development; enterprise architecture documentation; information security and privacy architecture documentation; system security plan; privacy plan; security and privacy CONOPS for the system; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with information security and privacy architecture development responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for designing the information security and privacy architecture; mechanisms supporting and/or implementing the design of the information security and privacy architecture
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations strategically allocate security and privacy controls in the security and privacy architectures so that adversaries must overcome multiple controls to achieve their objective. Requiring adversaries to defeat multiple controls makes it more difficult to attack information resources by increasing the work factor of the adversary; it also increases the likelihood of detection. The coordination of allocated controls is essential to ensure that an attack that involves one control does not create adverse, unintended consequences by interfering with other controls. Unintended consequences can include system lockout and cascading alarms. The placement of controls in systems and organizations is an important activity that requires thoughtful analysis. The value of organizational assets is an important consideration in providing additional layering. Defense-in-depth architectural approaches include modularity and layering (see [SA-8(3)](#sa-8.3) ), separation of system and user functionality (see [SC-2](#sc-2) ), and security function isolation (see [SC-3](#sc-3)).
  GUIDANCE
  tag nist: ['PL-8 (1)']
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{}
  tag odp: %w{pl_08_01_odp_01 pl_08_01_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PL-8 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
