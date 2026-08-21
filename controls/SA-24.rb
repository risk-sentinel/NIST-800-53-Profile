control 'SA-24' do
  impact 0.5
  title 'Design For Cyber Resiliency'
  desc <<~DESC
    a. Design organizational systems, system components, or system services to achieve cyber resiliency by:
      1. Defining the following cyber resiliency goals: #{input('sa_24_odp_01')}.
      2. Defining the following cyber resiliency objectives: #{input('sa_24_odp_02')}.
      3. Defining the following cyber resiliency techniques: #{input('sa_24_odp_03')}.
      4. Defining the following cyber resiliency implementation approaches: #{input('sa_24_odp_04')}.
      5. Defining the following cyber resiliency design principles: #{input('sa_24_odp_05')}.
    b. Implement the selected cyber resiliency goals, objectives, techniques, implementation approaches, and design principles as part of an organizational risk management process or systems security engineering process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-24 Determine if:
        SA-24a.
          SA-24a.01 organizational systems, system components, or system services achieve cyber resiliency through #{input('sa_24_odp_01')};
          SA-24a.02 organizational systems, system components, or system services achieve cyber resiliency through #{input('sa_24_odp_02')};
          SA-24a.03 organizational systems, system components, or system services achieve cyber resiliency through #{input('sa_24_odp_03')};
          SA-24a.04 organizational systems, system components, or system services achieve cyber resiliency through #{input('sa_24_odp_04')};
          SA-24a.05 organizational systems, system components, or system services achieve cyber resiliency through #{input('sa_24_odp_05')};
        SA-24b.
          SA-24b.[01] selected cyber resiliency goals are implemented as part of an organizational risk management process of systems security engineering process;
          SA-24b.[02] selected cyber resiliency objectives are implemented as part of an organizational risk management process of systems security engineering process;
          SA-24b.[03] selected cyber resiliency techniques are implemented as part of an organizational risk management process of systems security engineering process;
          SA-24b.[04] selected cyber resiliency implementation approaches are implemented as part of an organizational risk management process of systems security engineering process;
          SA-24b.[05] selected cyber resiliency design principles are implemented as part of an organizational risk management process of systems security engineering process.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy;; system and services acquisition procedures;; assessment and authorization procedures;; procedures addressing cyber resiliency goals, objectives, techniques, implementation approaches, and design principles used in the specification, design, development, implementation, and modification of the system;; system design documentation;; security and privacy requirements and specifications for the system;; system security plan;; privacy plan;; privacy impact assessment;; privacy risk assessment documentation.
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities;; organizational personnel with information security and privacy responsibilities;; organizational personnel with system specification, design, development, implementation, and modification responsibilities;; system developers.
      TEST: Organizational processes for applying cyber resiliency principles in system specification, design, development, implementation, and modification;; mechanisms supporting the application of cyber resiliency principles in system specification, design, development, implementation, and modification.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cyber resiliency is critical to ensuring the survivability of mission critical systems and high value assets. Cyber resiliency focuses on limiting the damage from adversity or the conditions that can cause a loss of assets. Damage can affect: (1) organizations (e.g., loss of reputation, increased existential risk); (2) missions or business functions (e.g., decreased capability to complete current missions and to accomplish future missions); (3) security (e.g., decreased capability to achieve security objectives or to prevent, detect, and respond to cyber incidents); (4) systems (e.g., unauthorized use of system resources or decreased capability to meet system requirements); or (5) specific system elements (e.g., physical destruction; corruption, modification, or fabrication of information).

    Cyber resiliency goals are intended to help organizations maintain a state of informed preparedness for adversity, continue essential mission or business functions despite adversity, restore mission or business functions during and after adversity, and modify mission or business functions and their supporting capabilities in response to predicted changes in technical, operational, or threat environments.

    NIST SP 800-160, Volume 2 provides additional information on the Cyber Resiliency Engineering Framework to include detailed descriptions of cyber resiliency goals, objectives, techniques, implementation approaches, and design principles. NIST SP 800-160, Vol 1 provides additional information on achieving cyber resiliency as an emergent property of an engineered system.
  GUIDANCE
  tag nist: ['SA-24']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_24_odp_01 sa_24_odp_02 sa_24_odp_03 sa_24_odp_04 sa_24_odp_05}

  describe 'NIST SP 800-53 Rev 5 control SA-24' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
