control 'SA-11' do
  impact 0.5
  title 'Developer Testing and Evaluation'
  desc <<~DESC
    Require the developer of the system, system component, or system service, at all post-design stages of the system development life cycle, to:
      a. Develop and implement a plan for ongoing security and privacy control assessments;
      b. Perform #{input('sa_11_odp_01')} testing/evaluation #{input('sa_11_odp_02')} at #{input('sa_11_odp_03')};
      c. Produce evidence of the execution of the assessment plan and the results of the testing and evaluation;
      d. Implement a verifiable flaw remediation process; and
      e. Correct flaws identified during testing and evaluation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-11a.
        SA-11a.[01] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to develop a plan for ongoing security assessments;
        SA-11a.[02] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to implement a plan for ongoing security assessments;
        SA-11a.[03] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to develop a plan for privacy assessments;
        SA-11a.[04] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to implement a plan for ongoing privacy assessments;
      SA-11b. the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to perform #{input('sa_11_odp_01')} testing/evaluation #{input('sa_11_odp_02')} at #{input('sa_11_odp_03')};
      SA-11c.
        SA-11c.[01] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to produce evidence of the execution of the assessment plan;
        SA-11c.[02] the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to produce the results of the testing and evaluation;
      SA-11d. the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to implement a verifiable flaw remediation process;
      SA-11e. the developer of the system, system component, or system service is required at all post-design stages of the system development life cycle to correct flaws identified during testing and evaluation.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing system developer security and privacy testing; procedures addressing flaw remediation; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; security and privacy architecture; system design documentation; system developer security and privacy assessment plans; results of developer security and privacy assessments for the system, system component, or system service; security and privacy flaw and remediation tracking records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with developer security and privacy testing responsibilities; system developers
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer security and privacy testing and evaluation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developmental testing and evaluation confirms that the required controls are implemented correctly, operating as intended, enforcing the desired security and privacy policies, and meeting established security and privacy requirements. Security properties of systems and the privacy of individuals may be affected by the interconnection of system components or changes to those components. The interconnections or changes—including upgrading or replacing applications, operating systems, and firmware—may adversely affect previously implemented controls. Ongoing assessment during development allows for additional types of testing and evaluation that developers can conduct to reduce or eliminate potential flaws. Testing custom software applications may require approaches such as manual code review, security architecture review, and penetration testing, as well as and static analysis, dynamic analysis, binary analysis, or a hybrid of the three analysis approaches.

    Developers can use the analysis approaches, along with security instrumentation and fuzzing, in a variety of tools and in source code reviews. The security and privacy assessment plans include the specific activities that developers plan to carry out, including the types of analyses, testing, evaluation, and reviews of software and firmware components; the degree of rigor to be applied; the frequency of the ongoing testing and evaluation; and the types of artifacts produced during those processes. The depth of testing and evaluation refers to the rigor and level of detail associated with the assessment process. The coverage of testing and evaluation refers to the scope (i.e., number and type) of the artifacts included in the assessment process. Contracts specify the acceptance criteria for security and privacy assessment plans, flaw remediation processes, and the evidence that the plans and processes have been diligently applied. Methods for reviewing and protecting assessment plans, evidence, and documentation are commensurate with the security category or classification level of the system. Contracts may specify protection requirements for documentation.
  GUIDANCE
  tag nist: ['SA-11']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH PRIVACY}
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{sa_11_odp_01 sa_11_odp_02 sa_11_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SA-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
