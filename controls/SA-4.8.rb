control 'SA-4 (8)' do
  impact 0.5
  title 'Continuous Monitoring Plan for Controls'
  desc <<~DESC
    Require the developer of the system, system component, or system service to produce a plan for continuous monitoring of control effectiveness that is consistent with the continuous monitoring program of the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(08) the developer of the system, system component, or system service is required to produce a plan for the continuous monitoring of control effectiveness that is consistent with the continuous monitoring program of the organization.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing developer continuous monitoring plans; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; developer continuous monitoring plans; security assessment plans; acquisition contracts for the system, system component, or system service; acquisition documentation; solicitation documentation; service level agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for determining system security requirements; system developers; organizational personnel with information security responsibilities
      TEST: Vendor processes for continuous monitoring; mechanisms supporting and/or implementing developer continuous monitoring
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The objective of continuous monitoring plans is to determine if the planned, required, and deployed controls within the system, system component, or system service continue to be effective over time based on the inevitable changes that occur. Developer continuous monitoring plans include a sufficient level of detail such that the information can be incorporated into continuous monitoring programs implemented by organizations. Continuous monitoring plans can include the types of control assessment and monitoring activities planned, frequency of control monitoring, and actions to be taken when controls fail or become ineffective.
  GUIDANCE
  tag nist: ['SA-4 (8)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
