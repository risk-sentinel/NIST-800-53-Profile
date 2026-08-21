control 'SA-17(08)' do
  impact 0.5
  title "#{input('sa_17_08_odp_01')} are designed with coordinated behavior to implement #{input('sa_17_08_odp_02')}."
  desc <<~DESC
    Design #{input('sa_17_08_odp_01')} with coordinated behavior to implement the following capabilities: #{input('sa_17_08_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_17_08_odp_01')} are designed with coordinated behavior to implement #{input('sa_17_08_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; enterprise architecture policy; procedures addressing developer security and privacy architecture and design; enterprise architecture; security architecture; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system design documentation; system configuration settings and associated documentation; developer documentation describing design orchestration; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer; organizational personnel with information security architecture responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security resources that are distributed, located at different layers or in different system elements, or are implemented to support different aspects of trustworthiness can interact in unforeseen or incorrect ways. Adverse consequences can include cascading failures, interference, or coverage gaps. Coordination of the behavior of security resources (e.g., by ensuring that one patch is installed across all resources before making a configuration change that assumes that the patch is propagated) can avert such negative interactions.
  GUIDANCE
  tag nist: ['SA-17 (8)']
  tag control: 'SA-17 (8)'
  tag objective: 'SA-17(08)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_17_8: true
  tag odp: %w{sa_17_08_odp_01 sa_17_08_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SA-17(08)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
