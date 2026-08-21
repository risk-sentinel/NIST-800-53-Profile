control 'SA-8 (3)' do
  impact 0.5
  title 'Modularity and Layering'
  desc <<~DESC
    Implement the security design principles of modularity and layering in #{input('sa_8_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(03)[01] #{input('sa_08_03_odp_01')} implement the security design principle of modularity;
      SA-08(03)[02] #{input('sa_08_03_odp_02')} implement the security design principle of layering.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principles of modularity and layering used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principles of modularity and layering in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principles of modularity and layering in system specification, design, development, implementation, and modification; mechanisms supporting and/or implementing an isolation boundary
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principles of modularity and layering are fundamental across system engineering disciplines. Modularity and layering derived from functional decomposition are effective in managing system complexity by making it possible to comprehend the structure of the system. Modular decomposition, or refinement in system design, is challenging and resists general statements of principle. Modularity serves to isolate functions and related data structures into well-defined logical units. Layering allows the relationships of these units to be better understood so that dependencies are clear and undesired complexity can be avoided. The security design principle of modularity extends functional modularity to include considerations based on trust, trustworthiness, privilege, and security policy. Security-informed modular decomposition includes the allocation of policies to systems in a network, separation of system applications into processes with distinct address spaces, allocation of system policies to layers, and separation of processes into subjects with distinct privileges based on hardware-supported privilege domains.
  GUIDANCE
  tag nist: ['SA-8 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_03_odp_01 sa_08_03_odp_02 sa_8_3_prm_1}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
