control 'PM-12' do
  impact 0.5
  title 'Insider Threat Program'
  desc <<~DESC
    Implement an insider threat program that includes a cross-discipline insider threat incident handling team.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-12 an insider threat program that includes a cross-discipline insider threat incident handling team is implemented.

    Assessment methods and objects:
      INTERVIEW: Organizational personnel with information security and privacy program planning and plan implementation responsibilities; organizational personnel responsible for the insider threat program; members of the cross-discipline insider threat incident handling team; legal counsel; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for implementing the insider threat program and the cross-discipline insider threat incident handling team; mechanisms supporting and/or implementing the insider threat program and the cross-discipline insider threat incident handling team
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations that handle classified information are required, under Executive Order 13587 [EO 13587](#0af071a6-cf8e-48ee-8c82-fe91efa20f94) and the National Insider Threat Policy [ODNI NITP](#06d74ea9-2178-449c-a9c5-b2980f804ac8) , to establish insider threat programs. The same standards and guidelines that apply to insider threat programs in classified environments can also be employed effectively to improve the security of controlled unclassified and other information in non-national security systems. Insider threat programs include controls to detect and prevent malicious insider activity through the centralized integration and analysis of both technical and nontechnical information to identify potential insider threat concerns. A senior official is designated by the department or agency head as the responsible individual to implement and provide oversight for the program. In addition to the centralized integration and analysis capability, insider threat programs require organizations to prepare department or agency insider threat policies and implementation plans, conduct host-based user monitoring of individual employee activities on government-owned classified computers, provide insider threat awareness training to employees, receive access to information from offices in the department or agency for insider threat analysis, and conduct self-assessments of department or agency insider threat posture.

    Insider threat programs can leverage the existence of incident handling teams that organizations may already have in place, such as computer security incident response teams. Human resources records are especially important in this effort, as there is compelling evidence to show that some types of insider crimes are often preceded by nontechnical behaviors in the workplace, including ongoing patterns of disgruntled behavior and conflicts with coworkers and other colleagues. These precursors can guide organizational officials in more focused, targeted monitoring efforts. However, the use of human resource records could raise significant concerns for privacy. The participation of a legal team, including consultation with the senior agency official for privacy, ensures that monitoring activities are performed in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['PM-12']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PM-12' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
