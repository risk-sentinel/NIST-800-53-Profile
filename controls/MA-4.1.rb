control 'MA-4 (1)' do
  impact 0.5
  title 'Logging and Review'
  desc <<~DESC
    (a) Log #{input('ma_4_1_prm_1')} for nonlocal maintenance and diagnostic sessions; and
    (b) Review the audit records of the maintenance and diagnostic sessions to detect anomalous behavior.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-04(01)(a)
        MA-04(01)(a)[01] #{input('ma_04_01_odp_01')} are logged for nonlocal maintenance sessions;
        MA-04(01)(a)[02] #{input('ma_04_01_odp_02')} are logged for nonlocal diagnostic sessions;
      MA-04(01)(b)
        MA-04(01)(b)[01] the audit records of the maintenance sessions are reviewed to detect anomalous behavior;
        MA-04(01)(b)[02] the audit records of the diagnostic sessions are reviewed to detect anomalous behavior.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; list of audit events; system configuration settings and associated documentation; maintenance records; diagnostic records; audit records; reviews of maintenance and diagnostic session records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; organizational personnel with audit and review responsibilities; system/network administrators
      TEST: Organizational processes for audit and review of nonlocal maintenance; mechanisms supporting and/or implementing audit and review of nonlocal maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit logging for nonlocal maintenance is enforced by [AU-2](#au-2) . Audit events are defined in [AU-2a](#au-2_smt.a).
  GUIDANCE
  tag nist: ['MA-4 (1)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag odp: %w{ma_04_01_odp_01 ma_04_01_odp_02 ma_4_1_prm_1}

  describe 'NIST SP 800-53 Rev 5 control MA-4 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
