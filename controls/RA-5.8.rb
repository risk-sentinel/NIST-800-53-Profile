control 'RA-5 (8)' do
  impact 0.5
  title 'Review Historic Audit Logs'
  desc <<~DESC
    Review historic audit logs to determine if a vulnerability identified in a #{input('ra_05_08_odp_01')} has been previously exploited within an #{input('ra_05_08_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-05(08) historic audit logs are reviewed to determine if a vulnerability identified in a #{input('ra_05_08_odp_01')} has been previously exploited within #{input('ra_05_08_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; procedures addressing vulnerability scanning; audit logs; records of audit log reviews; vulnerability scanning results; patch and vulnerability management records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with audit record review responsibilities; system/network administrators; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; organizational process for audit record review and response; mechanisms/tools supporting and/or implementing vulnerability scanning; mechanisms supporting and/or implementing audit record review
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Reviewing historic audit logs to determine if a recently detected vulnerability in a system has been previously exploited by an adversary can provide important information for forensic analyses. Such analyses can help identify, for example, the extent of a previous intrusion, the trade craft employed during the attack, organizational information exfiltrated or modified, mission or business capabilities affected, and the duration of the attack.
  GUIDANCE
  tag nist: ['RA-5 (8)']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag odp: %w{ra_05_08_odp_01 ra_05_08_odp_02}

  describe 'NIST SP 800-53 Rev 5 control RA-5 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
