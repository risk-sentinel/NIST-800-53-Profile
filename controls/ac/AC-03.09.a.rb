control 'AC-03(09)(a)' do
  impact 0.5
  title "information is released outside of the system only if the receiving #{input('ac_03_09_odp_01')} provides #{input('ac_03_09_odp_02')};"
  desc <<~DESC
    Release information outside of the system only if:
      (a) The receiving #{input('ac_03_09_odp_01')} provides #{input('ac_03_09_odp_02')} ; and
      (b) #{input('ac_03_09_odp_03')} are used to validate the appropriateness of the information designated for release.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      information is released outside of the system only if the receiving #{input('ac_03_09_odp_01')} provides #{input('ac_03_09_odp_02')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access enforcement; system design documentation; system configuration settings and associated documentation; list of security and privacy safeguards provided by receiving system or system components; list of security and privacy safeguards validating appropriateness of information designated for release; system audit records; results of period assessments (inspections/tests) of the external system; information sharing agreements; memoranda of understanding; acquisitions/contractual agreements; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with access enforcement responsibilities; system/network administrators; organizational personnel with information security and privacy responsibilities; organizational personnel with responsibility for acquisitions/contractual agreements; legal counsel; system developers
      TEST: Mechanisms implementing access enforcement functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations can only directly protect information when it resides within the system. Additional controls may be needed to ensure that organizational information is adequately protected once it is transmitted outside of the system. In situations where the system is unable to determine the adequacy of the protections provided by external entities, as a mitigation measure, organizations procedurally determine whether the external systems are providing adequate controls. The means used to determine the adequacy of controls provided by external systems include conducting periodic assessments (inspections/tests), establishing agreements between the organization and its counterpart organizations, or some other process. The means used by external entities to protect the information received need not be the same as those used by the organization, but the means employed are sufficient to provide consistent adjudication of the security and privacy policy to protect the information and individuals’ privacy.

    Controlled release of information requires systems to implement technical or procedural means to validate the information prior to releasing it to external systems. For example, if the system passes information to a system controlled by another organization, technical means are employed to validate that the security and privacy attributes associated with the exported information are appropriate for the receiving system. Alternatively, if the system passes information to a printer in organization-controlled space, procedural means can be employed to ensure that only authorized individuals gain access to the printer.
  GUIDANCE
  tag nist: ['AC-3 (9)']
  tag control: 'AC-3 (9)'
  tag objective: 'AC-03(09)(a)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_3_9: true
  tag odp: %w{ac_03_09_odp_01 ac_03_09_odp_02 ac_03_09_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective AC-03(09)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
