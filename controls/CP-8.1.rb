control 'CP-8 (1)' do
  impact 0.5
  title 'Priority of Service Provisions'
  desc <<~DESC
    (a) Develop primary and alternate telecommunications service agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives); and
    (b) Request Telecommunications Service Priority for all telecommunications services used for national security emergency preparedness if the primary and/or alternate telecommunications services are provided by a common carrier.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-08(01)(a)
        CP-08(01)(a)[01] primary telecommunications service agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives) are developed;
        CP-08(01)(a)[02] alternate telecommunications service agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives) are developed;
      CP-08(01)(b) Telecommunications Service Priority is requested for all telecommunications services used for national security emergency preparedness if the primary and/or alternate telecommunications services are provided by a common carrier.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing primary and alternate telecommunications services; contingency plan; primary and alternate telecommunications service agreements; Telecommunications Service Priority documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan telecommunications responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities; organizational personnel with responsibility for acquisitions/contractual agreements
      TEST: Mechanisms supporting telecommunications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations consider the potential mission or business impact in situations where telecommunications service providers are servicing other organizations with similar priority of service provisions. Telecommunications Service Priority (TSP) is a Federal Communications Commission (FCC) program that directs telecommunications service providers (e.g., wireline and wireless phone companies) to give preferential treatment to users enrolled in the program when they need to add new lines or have their lines restored following a disruption of service, regardless of the cause. The FCC sets the rules and policies for the TSP program, and the Department of Homeland Security manages the TSP program. The TSP program is always in effect and not contingent on a major disaster or attack taking place. Federal sponsorship is required to enroll in the TSP program.
  GUIDANCE
  tag nist: ['CP-8 (1)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-8 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
