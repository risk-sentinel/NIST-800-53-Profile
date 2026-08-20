control 'SA-8 (12)' do
  impact 0.5
  title 'Hierarchical Protection'
  desc <<~DESC
    Implement the security design principle of hierarchical protection in #{input('sa_08_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(12) #{input('sa_08_12_odp')} implement the security design principle of hierarchical protection.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of hierarchical protection used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of hierarchical protection in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of hierarchical protection in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of hierarchical protection states that a component need not be protected from more trustworthy components. In the degenerate case of the most trusted component, it protects itself from all other components. For example, if an operating system kernel is deemed the most trustworthy component in a system, then it protects itself from all untrusted applications it supports, but the applications, conversely, do not need to protect themselves from the kernel. The trustworthiness of users is a consideration for applying the principle of hierarchical protection. A trusted system need not protect itself from an equally trustworthy user, reflecting use of untrusted systems in "system high" environments where users are highly trustworthy and where other protections are put in place to bound and protect the "system high" execution environment.
  GUIDANCE
  tag nist: ['SA-8 (12)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_12_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (12)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
