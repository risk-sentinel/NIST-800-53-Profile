control 'SA-11 (5)' do
  impact 0.5
  title 'Penetration Testing'
  desc <<~DESC
    Require the developer of the system, system component, or system service to perform penetration testing:
      (a) At the following level of rigor: #{input('sa_11_5_prm_1')} ; and
      (b) Under the following constraints: #{input('sa_11_05_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11(05)(a)
        SA-11(05)(a)[01] the developer of the system, system component, or system service is required to perform penetration testing at the following level of rigor: #{input('sa_11_05_odp_01')};
        SA-11(05)(a)[02] the developer of the system, system component, or system service is required to perform penetration testing at the following level of rigor: #{input('sa_11_05_odp_02')};
      SA-11(05)(b) the developer of the system, system component, or system service is required to perform penetration testing under #{input('sa_11_05_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing system developer security testing; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; system developer penetration testing and evaluation plans; system developer penetration testing and evaluation results; system security plan; privacy plan; personally identifiable information processing policy; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with developer security testing responsibilities; system developers; independent verification agent
      TEST: Organizational processes for monitoring developer security and privacy assessments; mechanisms supporting and/or implementing the monitoring of developer security and privacy assessments
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Penetration testing is an assessment methodology in which assessors, using all available information technology product or system documentation and working under specific constraints, attempt to circumvent the implemented security and privacy features of information technology products and systems. Useful information for assessors who conduct penetration testing includes product and system design specifications, source code, and administrator and operator manuals. Penetration testing can include white-box, gray-box, or black-box testing with analyses performed by skilled professionals who simulate adversary actions. The objective of penetration testing is to discover vulnerabilities in systems, system components, and services that result from implementation errors, configuration faults, or other operational weaknesses or deficiencies. Penetration tests can be performed in conjunction with automated and manual code reviews to provide a greater level of analysis than would ordinarily be possible. When user session information and other personally identifiable information is captured or recorded during penetration testing, such information is handled appropriately to protect privacy.
  GUIDANCE
  tag nist: ['SA-11 (5)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_11_05_odp_01 sa_11_05_odp_02 sa_11_05_odp_03 sa_11_5_prm_1}

  describe 'NIST SP 800-53 Rev 5 control SA-11 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
