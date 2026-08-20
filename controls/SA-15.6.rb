control 'SA-15 (6)' do
  impact 0.5
  title 'Continuous Improvement'
  desc <<~DESC
    Require the developer of the system, system component, or system service to implement an explicit process to continuously improve the development process.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-15(06) the developer of the system, system component, or system service is required to implement an explicit process to continuously improve the development process.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing development process, standards, and tools; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; quality goals and metrics for improving the system development process; security assessments; quality control reviews of system development process; plans of action and milestones for improving the system development process; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; system developer
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developers of systems, system components, and system services consider the effectiveness and efficiency of their development processes for meeting quality objectives and addressing the security and privacy capabilities in current threat environments.
  GUIDANCE
  tag nist: ['SA-15 (6)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-15 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
