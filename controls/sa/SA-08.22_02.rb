control 'SA-08(22)[02]' do
  impact 0.5
  title "#{input('sa_08_22_odp_02')} implement the security design principle of traceability."
  desc <<~DESC
    Implement the security design principle of accountability and traceability in #{input('sa_8_22_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_22_odp_02')} implement the security design principle of traceability.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; audit and accountability policy; access control policy; procedures addressing least privilege; procedures addressing auditable events; identification and authentication policy; procedures addressing user identification and authentication; procedures addressing the security design principle of accountability and traceability used in the specification, design, development, implementation, and modification of the system; system design documentation; system audit records; system auditable events; system configuration settings and associated documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with audit and accountability responsibilities; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of accountability and traceability in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of accountability and traceability in system specification, design, development, implementation, and modification; mechanisms implementing information system auditing; mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of accountability and traceability states that it is possible to trace security-relevant actions (i.e., subject-object interactions) to the entity on whose behalf the action is being taken. The principle of accountability and traceability requires a trustworthy infrastructure that can record details about actions that affect system security (e.g., an audit subsystem). To record the details about actions, the system is able to uniquely identify the entity on whose behalf the action is being carried out and also record the relevant sequence of actions that are carried out. The accountability policy also requires that audit trail itself be protected from unauthorized access and modification. The principle of least privilege assists in tracing the actions to particular entities, as it increases the granularity of accountability. Associating specific actions with system entities, and ultimately with users, and making the audit trail secure against unauthorized access and modifications provide non-repudiation because once an action is recorded, it is not possible to change the audit trail. Another important function that accountability and traceability serves is in the routine and forensic analysis of events associated with the violation of security policy. Analysis of audit logs may provide additional information that may be helpful in determining the path or component that allowed the violation of the security policy and the actions of individuals associated with the violation of the security policy.
  GUIDANCE
  tag nist: ['SA-8 (22)']
  tag control: 'SA-8 (22)'
  tag objective: 'SA-08(22)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_22: true
  tag odp: %w{sa_08_22_odp_02 sa_8_22_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(22)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
