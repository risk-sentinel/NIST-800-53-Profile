control 'IR-03(03)(c)[06]' do
  impact 0.5
  title "quantitative data from testing are used to provide incident response measures and metrics in a reproducible format."
  desc <<~DESC
    Use qualitative and quantitative data from testing to:
      (a) Determine the effectiveness of incident response processes;
      (b) Continuously improve incident response processes; and
      (c) Provide incident response measures and metrics that are accurate, consistent, and in a reproducible format.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      quantitative data from testing are used to provide incident response measures and metrics in a reproducible format.

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident response testing; incident response testing documentation; incident response plan; business continuity plans; contingency plans; disaster recovery plans; continuity of operations plans; crisis communications plans; critical infrastructure plans; occupant emergency plans; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response testing responsibilities; organizational personnel with responsibilities for testing organizational plans related to incident response testing; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    To help incident response activities function as intended, organizations may use metrics and evaluation criteria to assess incident response programs as part of an effort to continually improve response performance. These efforts facilitate improvement in incident response efficacy and lessen the impact of incidents.
  GUIDANCE
  tag nist: ['IR-3 (3)']
  tag control: 'IR-3 (3)'
  tag objective: 'IR-03(03)(c)[06]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_3_3: true

  describe 'NIST SP 800-53A Rev 5 objective IR-03(03)(c)[06]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
