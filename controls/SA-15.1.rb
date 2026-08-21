control 'SA-15 (1)' do
  impact 0.5
  title 'Quality Metrics'
  desc <<~DESC
    Require the developer of the system, system component, or system service to:
      (a) Define quality metrics at the beginning of the development process; and
      (b) Provide evidence of meeting the quality metrics #{input('sa_15_01_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-15(01)(a) the developer of the system, system component, or system service is required to define quality metrics at the beginning of the development process;
      SA-15(01)(b) the developer of the system, system component, or system service is required to provide evidence of meeting the quality metrics #{input('sa_15_01_odp_01')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing development process, standards, and tools; procedures addressing the integration of security requirements into the acquisition process; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; list of quality metrics; documentation evidence of meeting quality metrics; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations use quality metrics to establish acceptable levels of system quality. Metrics can include quality gates, which are collections of completion criteria or sufficiency standards that represent the satisfactory execution of specific phases of the system development project. For example, a quality gate may require the elimination of all compiler warnings or a determination that such warnings have no impact on the effectiveness of required security or privacy capabilities. During the execution phases of development projects, quality gates provide clear, unambiguous indications of progress. Other metrics apply to the entire development project. Metrics can include defining the severity thresholds of vulnerabilities in accordance with organizational risk tolerance, such as requiring no known vulnerabilities in the delivered system with a Common Vulnerability Scoring System (CVSS) severity of medium or high.
  GUIDANCE
  tag nist: ['SA-15 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_15_01_odp_01}

  describe 'NIST SP 800-53 Rev 5 control SA-15 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
