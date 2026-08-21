control 'SA-11 (4)' do
  impact 0.5
  title 'Manual Code Reviews'
  desc <<~DESC
    Require the developer of the system, system component, or system service to perform a manual code review of #{input('sa_11_04_odp_01')} using the following processes, procedures, and/or techniques: #{input('sa_11_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11(04) the developer of the system, system component, or system service is required to perform a manual code review of #{input('sa_11_04_odp_01')} using #{input('sa_11_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing system developer security testing; processes, procedures, and/or techniques for performing manual code reviews; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer security testing and evaluation plans; system developer security testing and evaluation results; list of code requiring manual reviews; records of manual code reviews; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with developer security testing responsibilities; system developers; independent verification agent
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer testing and evaluation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Manual code reviews are usually reserved for the critical software and firmware components of systems. Manual code reviews are effective at identifying weaknesses that require knowledge of the application’s requirements or context that, in most cases, is unavailable to automated analytic tools and techniques, such as static and dynamic analysis. The benefits of manual code review include the ability to verify access control matrices against application controls and review detailed aspects of cryptographic implementations and controls.
  GUIDANCE
  tag nist: ['SA-11 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_11_04_odp_01 sa_11_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SA-11 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
