control 'RA-7' do
  impact 0.5
  title 'Risk Response'
  desc <<~DESC
    Respond to findings from security and privacy assessments, monitoring, and audits in accordance with organizational risk tolerance.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-07[01] findings from security assessments are responded to in accordance with organizational risk tolerance;
      RA-07[02] findings from privacy assessments are responded to in accordance with organizational risk tolerance;
      RA-07[03] findings from monitoring are responded to in accordance with organizational risk tolerance;
      RA-07[04] findings from audits are responded to in accordance with organizational risk tolerance.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; assessment reports; audit records/event logs; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with assessment and auditing responsibilities; system/network administrators; organizational personnel with security and privacy responsibilities
      TEST: Organizational processes for assessments and audits; mechanisms/tools supporting and/or implementing assessments and auditing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations have many options for responding to risk including mitigating risk by implementing new controls or strengthening existing controls, accepting risk with appropriate justification or rationale, sharing or transferring risk, or avoiding risk. The risk tolerance of the organization influences risk response decisions and actions. Risk response addresses the need to determine an appropriate response to risk before generating a plan of action and milestones entry. For example, the response may be to accept risk or reject risk, or it may be possible to mitigate the risk immediately so that a plan of action and milestones entry is not needed. However, if the risk response is to mitigate the risk, and the mitigation cannot be completed immediately, a plan of action and milestones entry is generated.
  GUIDANCE
  tag nist: ['RA-7']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control RA-7' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
